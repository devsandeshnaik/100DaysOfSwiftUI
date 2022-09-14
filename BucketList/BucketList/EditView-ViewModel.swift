//
//  EditView-ViewModel.swift
//  BucketList
//
//  Created by Sandesh Naik on 14/09/22.
//

import Foundation

extension EditView {
@MainActor class EditViewModel: ObservableObject {
    enum LoadingState {
        case loading, loaded, failed
    }
    
    @Published var pages = [Page]()
    @Published var loadingState: LoadingState = .loading
        
    func fetchNearbyPlaces(for location: Location) async {
            let urlString = "https://en.wikipedia.org/w/api.php?ggscoord=\(location.coordinate.latitude)%7C\(location.coordinate.longitude)&action=query&prop=coordinates%7Cpageimages%7Cpageterms&colimit=50&piprop=thumbnail&pithumbsize=500&pilimit=50&wbptterms=description&generator=geosearch&ggsradius=10000&ggslimit=50&format=json"

            guard let url = URL(string: urlString) else {
                print("Bad URL: \(urlString)")
                return
            }

            do {
                let (data, _) = try await URLSession.shared.data(from: url)

                // we got some data back!
                let items = try JSONDecoder().decode(Result.self, from: data)
                Task  { @MainActor in
                    pages = items.query.pages.values.sorted()
                    self.loadingState = .loaded
                }
            } catch {
                // if we're still here it means the request failed somehow
                Task  { @MainActor in
                    self.loadingState = .failed
                }
            }
        }
    }
}

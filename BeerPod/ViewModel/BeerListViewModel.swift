//
//  BeerListViewModel.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import UIKit

public class BeerListViewModel: BeerListViewModelable, BeerRepositoryInjectable {
    
    private weak var beerListView: BeerListViewable?
    
    public init(beerListView: BeerListViewable?) {
        self.beerListView = beerListView
    }
    
    public func getBeerData() {
        
        guard let beerListView = beerListView else {
            return
        }
        
        DispatchQueue.global().async { 
            
            self.beerRepository.fetchBeerData { (retrivedBeers, error) -> Void in
                
                DispatchQueue.main.async {
                    if let error = error {
                        beerListView.showErrorMessage(errorMessage: error.localizedDescription)
                    } else if let retrivedBeers = retrivedBeers {
                        beerListView.showBeerList(beers: retrivedBeers)
                    }
                }
            }
        }
    }
}





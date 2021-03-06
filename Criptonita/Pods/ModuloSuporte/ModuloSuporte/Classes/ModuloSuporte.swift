//
//  ModuloSuporte.swift
//  ModuloSuporte
//
//  Created by Thiago Bittencourt Coelho on 27/01/21.
//

import Foundation

public class ModuloSuporte {
    var nc:UINavigationController
    
    public init(navigationController:UINavigationController) {
        self.nc = navigationController
        
    }
    public func abreDetalhes(initials:String,currentValueOFCoin:Double, isFavorite:Bool, hourSell:Double, monthSell:Double, yearSell:Double, image:UIImage) {
    
        let viewModel = TelaDeDetalhesViewModel(initials, currentValueOFCoin, isFavorite, hourSell, monthSell, yearSell, image)
        let tela = TelaDeDetalhesViewController(viewModel: viewModel)
        
        if #available(iOS 10.0, *) {
            nc.navigationBar.barTintColor = UIColor(displayP3Red: 0.55, green:0.59, blue:0.37, alpha: 1)
            nc.navigationBar.tintColor = .white
            nc.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            nc.navigationBar.shadowImage = UIImage()
            let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
            nc.navigationBar.titleTextAttributes = textAttributes
            
        } else {
            // Fallback on earlier versions
        }
        nc.pushViewController(tela, animated: true)
        
    }
}

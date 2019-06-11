//
//  Game_1.swift
//  Game
//
//  Created by XXXTHINKING on 2019/6/11.
//  Copyright © 2019 XXXTHINKING. All rights reserved.
//

import Foundation
import UIKit

class Game_1SceneViewController:UIViewController{
    var tile:NSMutableArray=NSMutableArray(objects:
        UIImage(named: "icons01.jpeg")!,
                                           UIImage(named: "icons02.jpeg")!,
                                           UIImage(named: "icons03.jpeg")!,
                                           UIImage(named: "icons04.jpeg")!,
                                           UIImage(named: "icons05.jpeg")!,
                                           UIImage(named: "icons06.jpeg")!,
                                           UIImage(named: "icons07.jpeg")!,
                                           UIImage(named: "icons08.jpeg")!,
                                           UIImage(named: "icons09.jpeg")!,
                                           UIImage(named: "icons10.jpeg")!,
                                           UIImage(named: "icons11.jpeg")!,
                                           UIImage(named: "icons12.jpeg")!,
                                           UIImage(named: "icons13.jpeg")!,
                                           UIImage(named: "icons14.jpeg")!,
                                           UIImage(named: "icons15.jpeg")!
    )
    @IBAction func Check(_ sender: AnyObject) {
        var senderID:Int=sender.tag;
        var tileImage:UIImage=self.tile.object(at: senderID)as! UIImage
    }
}


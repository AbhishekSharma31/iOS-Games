//
//  AppTableViewCell.swift
//  Project2
//
//  Created by Abhishek Sharma on 2/27/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit


/*

        <-----------  30  ---------->
        ----------------------------
        |                           |    |
        |                           |    80
        |                           |    |
        ----------------------------

*/


class AppTableViewCell: UITableViewCell {
    var iconView : UIImageView?
    var namelable : UILabel?
    var publisherabel : UILabel?
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconView = UIImageView(frame: CGRectMake(10, 10, 60, 60))
        self.addSubview(iconView!)
        
        namelable = UILabel(frame: CGRectMake(80, 10, 210, 25))
        self.addSubview(namelable!)
        
        publisherabel = UILabel(frame: CGRectMake(80, 45, 210, 25))
        self.addSubview(publisherabel!)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

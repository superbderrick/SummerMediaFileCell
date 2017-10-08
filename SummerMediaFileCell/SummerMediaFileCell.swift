//
//  SummerMediaFIleCellTableViewCell.swift
//  SummerMediaFileCell
//
//  Created by Kang Jinyeoung on 08/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import UIKit

open class SummerMediaFileCell: UITableViewCell {
  
  open var fileName: UILabel!
  open var fileFormat: UILabel!
  open var fileSize: UILabel!
  
  open var fileThumbnailView: UIImageView!
  open var bookmarkButton : UIButton!

  open override  func awakeFromNib() {
        super.awakeFromNib()
    
    }
  
  public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.backgroundView?.backgroundColor = UIColor.blue
    
    self.contentView.backgroundColor = UIColor.red
    let width = self.contentView.frame.size.width * 0.5
    _ = self.frame.size.height
    
    fileThumbnailView  = UIImageView(frame:CGRect(x:10, y:10, width:width, height:self.frame.size.height));
    fileThumbnailView.image = UIImage(named:"default.png")
    
    contentView.addSubview(fileThumbnailView)
    
    

  
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override open func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
  }

}

//
//  home_tableviewcell.swift
//  Quesay
//
//  Created by Kushboo Patel on 10/12/21.
//

import UIKit

class home_tableviewcell: UITableViewCell
{
    //MARK: Properties/IBOutlets
    @IBOutlet weak var lbl_username : UILabel!
    @IBOutlet weak var lbl_postinfo : UILabel!
    @IBOutlet weak var img_user : UIImageView!
    @IBOutlet weak var img_post : UIImageView!
    @IBOutlet weak var btn_like : UIButton!
    @IBOutlet weak var btn_comment : UIButton!
    @IBOutlet weak var height_imgpost : NSLayoutConstraint!
    @IBOutlet weak var top_toview : NSLayoutConstraint!
    @IBOutlet weak var height_imguser : NSLayoutConstraint!
    @IBOutlet weak var height_btncomment : NSLayoutConstraint!
    //MARK: - variables
    var isliked : Bool = false
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - Set up cell dynamically for Home VC
    ///Dynamically setting up each cell here to appear differently
    func setupcell_home(index : IndexPath)
    {
        ///Showing Post image for only odd rows
        if index.row % 2 == 0
        {
            height_imgpost.constant = 0
            top_toview.constant = 0
        }
        else
        {
            height_imgpost.constant = 160
            top_toview.constant = 130
        }
        ///For rows 3 and 6  setting long text
        if index.row == 3 || index.row == 6
        {
            self.lbl_postinfo.text = "You've got a heart that's broken and a will that's given up\n A cynical mind and a soul that's worn and rough \nYou're a fighter, no one can get the best of you \nDon't let 'em stay to close that's why you play every man for a fool\nI don't care you can live your life alone\nWas only tryin' to show you how to love again\nTried and tried to chip away your heart of stone\nWas only tryin' to show you how to love againHow are you gonna fall if you don't take that leap\nYou live in fear, fear of lovin' me\nAnd I'm givin' up, I'm givin' up on you\nBecause you'll never change and\nGivin' your heart away is one thing you won't do"
        }
        
    }
    
    //MARK: - Set up cell dynamically for Profile VC
    ///Dynamically setting up each cell here to appear differently
    func setupcell_profile(index : IndexPath)
    {
        ///Set the user icon height 0 for hiding it
        height_imguser.constant = 0
        img_user.isHidden = true
        /// hide the username label
        lbl_username.isHidden = true
        //Set the comment button height 0 and hiding it
        height_btncomment.constant = 0
        /// hide the like button
        btn_like.isHidden = true
        
        ///Showing Post image for only odd rows
        if index.row % 2 == 0
        {
            height_imgpost.constant = 0
            top_toview.constant = 0
        }
        else
        {
            height_imgpost.constant = 160
            top_toview.constant = 130
        }
        ///For rows 3 and 6  setting long text
        if index.row == 3 || index.row == 6
        {
            self.lbl_postinfo.text = "You've got a heart that's broken and a will that's given up\n A cynical mind and a soul that's worn and rough \nYou're a fighter, no one can get the best of you \nDon't let 'em stay to close that's why you play every man for a fool\nI don't care you can live your life alone\nWas only tryin' to show you how to love again\nTried and tried to chip away your heart of stone\nWas only tryin' to show you how to love againHow are you gonna fall if you don't take that leap\nYou live in fear, fear of lovin' me\nAnd I'm givin' up, I'm givin' up on you\nBecause you'll never change and\nGivin' your heart away is one thing you won't do"
        }
        
    }
    //MARK: - Cell button Actions
    ///Like button is clicked
    @IBAction func onclick_like(_ sender :UIButton)
    {
        
        if self.isliked == false ///If post is not liked
        {
            ///Like the post from here, changes image and title on tap
            
        sender.setImage(UIImage(named: "like_filled"), for: .normal)
        sender.setTitle("6 Likes", for: .normal)
            isliked = true
        }
        else ///If the post is like
        {
            ///UnLike the post from here, changes image and title on tap
            sender.setImage(UIImage(named: "like_empty"), for: .normal)
            sender.setTitle("5 Likes", for: .normal)
                isliked = false
        }
        
        ///Please note these values are not saved any where. On scroll they will not be retained.
        
    }
    ///Comment button is clicked
    @IBAction func onclick_comment(_ sender :UIButton)
    {
        
    }
    
    

}

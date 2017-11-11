key_left=global.player_holdleft
key_right=global.player_holdright
if global.player_enabled=true {
    key_left=keyboard_check(vk_left)
    key_right=keyboard_check(vk_right)
}
if object_index!=obj_player {
    key_left=false
    key_right=false
}
if key_left and horispd>(maxhori*-1) {
    horispd-=horiinc
}
if key_right and horispd<maxhori {
    horispd+=horiinc
}
if key_left and key_right or key_left=false and key_right=false {
    if horispd>0 {
        horispd-=horiinc
        if horispd<0 {
            horispd=0
        }
    }
    if horispd<0 {
        horispd+=horiinc
        if horispd>0 {
            horispd=0
        }
    }
}
if object_index=obj_player {
if horispd>0 {
    image_xscale=8
}
if horispd<0 {
    image_xscale=-8
}
}
/////////////////////////////////




if place_free(x+horispd,y)=true {
    x+=horispd
} else {
if place_free(x+horispd,y)=false {
    while(place_free(x+horispd,y)=false and horispd!=0) {
        if horispd>0 {
            horispd-=horiinc
        }
        if horispd<0 {
            horispd+=horiinc
        }
    }
    if horispd!=0 {
        x+=horispd
        horispd=0
    }
}
}

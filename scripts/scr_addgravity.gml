y=round(y)

if place_free(x,y+mygrav+1)=true {
    mygrav+=global.grav
} else {
if place_free(x,y+mygrav+1)=false {
    while(place_free(x,y+mygrav+1)=false and mygrav!=0) {
        if mygrav>0 {//falling
            mygrav-=global.grav
        }
        if mygrav<0 {//rising
            mygrav+=global.grav
        }
    }
    if mygrav!=0 {
        if global.player_addgravity=true or object_index!=obj_player {
        y+=mygrav
        }
        mygrav=0
    }
}




}


if global.player_addgravity=true or object_index!=obj_player {
if global.player_gravlimit!=-1 and mygrav>global.player_gravlimit {
    mygrav=global.player_gravlimit
}
y+=mygrav
}
y=round(y)
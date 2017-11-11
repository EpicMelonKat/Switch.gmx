///scr_build(type,...)
btype = string_lower(argument[0])
if btype="line" {
    bx1 = argument[1]
    by = argument[2]
    bx2 = argument[3]
    curposx = x
    curposy = y
    y = by
    x = bx1
    while(x<=bx2) {
        if place_free(x,y) {
            instance_create(x,y,obj_white)
        }
        x+=32
    }
    x = curposx
    y = curposy
}

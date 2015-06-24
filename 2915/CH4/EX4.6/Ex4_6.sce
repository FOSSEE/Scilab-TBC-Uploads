clc,clear
//Example 4.6
//To determine the length of the rope

d=8 //distance between places in feet
r=2 //radius of cylinder in feet
//from the figure
DA=d/2,BE=r
DE=3 //distance from centre of container to wall

AE=sqrt(DE^2 + DA^2) //pythagoras theorem
AB=sqrt(AE^2 - BE^2) //pythagoras theorem

//all angles below are in radians
angle_AED = atan((d/2)/DE)
angle_AEB = acos(BE/AE)
angle_BEC = %pi - (angle_AED + angle_AEB)
arc_BC = BE*angle_BEC //length of arc BC
L = 2*(AB + arc_BC) //length of rope
printf('Length of the rope = %.1f ft',L)

clc
//to percentage contraction of a rod
c=3*10^8 //light speed(m/s)
v=0.8*c //velocity(m/s)
//let lo be the length of the rod in the frame in which it is at rest
//s' is the frame which is moving with a speed 0.8c in a direction making an angle 60 with x-axis
//components of lo along perpendicular to the direction of motion are lo cos60 and lo sin60 respectively
l1=cos(%pi/3)*sqrt(1-(v/c)^2) //length of the rod alond the direction of motion =lo cos(pi/3)sqrt(1-(v/c)^2)
l2=sin(%pi/3)  //length of the rod perpendicular to the direction of motion =lo sin60
l=sqrt(l1^2+l2^2) // length of the moving rod
per=(1-l)*100/1
disp("percentage contraction of a rod is per="+string(per)+"%")


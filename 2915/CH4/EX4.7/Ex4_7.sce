clc,clear
//Example 4.7
//To determine the length of the belt around the pulleys

AE= 5 //radius of first pulley in cm
BF= 8 //radius of second pulley in cm
AB=15 //distance between centre of pulleys in cm

//from the figure
CF=AE //parallel side of rectangle ACFE
BC= BF- CF
AC = sqrt(AB^2 - BC^2) //by pythagoras theorem
EF=AC//parallel side of rectangle ACFE

angle_EAC = %pi/2
angle_BAC = asin(BC/AB)
angle_DAE = %pi -  angle_EAC - angle_BAC
angle_ABC = angle_DAE //AE and BF are parallel
angle_GBF= %pi - angle_ABC

arc_DE=AE*angle_ABC //length of arc DE
arc_FG=BF*angle_GBF //length of arc FG
L=2*(arc_DE + EF + arc_FG) //length of belt
printf('Length of belt around pulley = %f cm',L)

clc,clear
//Example 4.11
//To determine area insude belt pulley system

AE= 5 //radius of first pulley
BF= 8 //radius of second pulley
AB=15 //distance between centre of pulleys

//from the figure
CF=AE 
BC= BF- CF
AC = sqrt(AB^2 - BC^2)
//from the figure
angle_EAC = %pi/2
angle_BAC = asin(BC/AB)
angle_DAE = %pi -  angle_EAC - angle_BAC
angle_ABC = angle_DAE //AE and BF are parallel
angle_GBF= %pi - angle_ABC

area_DAE = AE^2*angle_DAE/2 //area of sector DAE
area_GBF = BF^2*angle_GBF/2 //area of sector GBF
area_AEFC = AE*AC //area of rectangle AEFC
area_ABC = AC*BC/2 //area of triangle ABC

area_K=2*(area_DAE + area_AEFC + area_ABC + + area_GBF )
printf('Area enclosed by belt pulley system = %.2f cm^2',area_K)
printf('\n\nNote: answer differs from book due to approximations by them')

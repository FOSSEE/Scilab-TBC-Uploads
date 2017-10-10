clc
a= 5 // in degrees
l= 20 // in cm
s= 10 // scale 10m =1cm
D1= l*sind(a)/s 
D2=l*(1-cosd(a))/s
printf('a)Displacement parallel to the chain = %f cm\n',D1)
printf(' b)Displacement perpendicular to the chain = %f cm',D2)

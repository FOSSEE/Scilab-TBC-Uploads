clc 
//Initialization of variables
a=6 //m
b=8 //m
//calculations
Ixy=9/32 *b^4 /4
xp= Ixy/(2/3 *b *1/2 *a*b)
ICG=1/36 *a*b^3
yp=2/3*b + ICG/(2/3 *b* 1/2 *a*b )
//results
printf("The coordinates of centre of pressure are (%.2f ,%d)",xp,yp)

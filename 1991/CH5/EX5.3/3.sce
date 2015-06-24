clc
clear
//input
f=0.15 //focal length
u=0.2 //distance of object
//calculation
x=(1/-f)-(1/u)//lens formula
y=1/x
m=y/u//linear magnification
//output
printf("the position of image is %3.3f m",y)
printf("\n linear magnification is %3.3f hence image is diminished",m)

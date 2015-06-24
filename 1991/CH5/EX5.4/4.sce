clc
clear
//input
f1=0.25 //focal length of diverging lens
f2=0.2 //focal length of converging lens
//calculation
x=(1/-f1)+(1/f2)//lens formula
y=1/x
a=(1/y)-(1/0.15)//lens formula
b=1/a
//output
printf("the position of image is %3.3f m hence the image is virtual",b)

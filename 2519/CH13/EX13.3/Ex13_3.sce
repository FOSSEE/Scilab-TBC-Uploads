clc
clear
//Initialization of variables
J=778
g=32.2
pc=54.6 //psia
h1=1329.1 //Btu/lbm
h2=1265 //btu/lbm
V2rev=1790 //ft/s
cv=0.99
m=1 //lbm
cv2=0.96
//calculations
V2d=cv*V2rev
hd=cv^2 *(h1-h2)
h2d=h1-hd
v2d=9.946
A2d=m*v2d/V2d
//results
printf("Throat area in case 2 = %.4f ft^2",A2d)

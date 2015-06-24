clc
clear
//Initialization of variables
py=20 //psia
px=3.55 //psia
R=1.986/29
//calculations
pr=py/px
disp("from table B-19")
Mx=2
My=0.577
pr2=0.721
ds=R*log(1/pr2)
//results
printf("Change in entropy = %.4f Btu/lbm R",ds)

//Initilization of variables
A=2000 //lb
E=2000 //lb
theta=60 //degrees
theta1=30 //degrees
//Sign convention positive means Tension and negative means Compression
//Taking sum of forces along x and y direction in fig7-13
AB=-A/sind(theta) //lb
AG=-AB*cosd(theta) //lb
//Taking sum of forces along x and y direction in fig7-14
BG=((-AB*cosd(theta1))-1000)/(cosd(theta1)) //lb
BC=((AB*sind(theta1))-(BG*sind(theta1))) //lb
//Taking sum of forces along x and y direction in fig7-15
GC=-(BG*sind(theta))/sind(theta) //lb
GF=AG+BG*cosd(theta)-GC*(cosd(theta)) //lb
//By symmetry of structure
DE=AB //lb
FE=AG //lb
DF=BG //lb
CD=BC //lb
//Result
clc
printf('The forces in the truess are\n')
printf('AB=DE=%flb,AG=FE=%flb,BG=DF=%flb,BC=CD=%flb and CG=CF=%flb',AB,AG,BG,BC,GC)

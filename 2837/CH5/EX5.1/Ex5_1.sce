clc
clear
//Initialization of variables
m=20 //lbm
P=1000 //psia
T=580 //R
R=35.12
//calculations
disp("From table 5-2,")
z=0.667
V=z*m*R*T/(P*144)
vt=0.0935
vtt=vt*m
//results
printf("Volume occupied = %.3f cu ft",V)
printf("\n Tablulated value for volume = %.2f cu ft",vtt)

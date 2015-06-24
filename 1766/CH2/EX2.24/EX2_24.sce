clc;funcprot(0);//Example 2.24
//Initilisation of Variables
L1=0.01;....//thickness of blocks in m
b=0.08;...//length of blocks in m
W=0.06;....//width of blocks in m
K1=20;....//thermal conductivity of blocks in W/m*degrees celcius
h=10000;....//the contact conductance of 2 blocks W/m^2*degrees celcius
T1=120;....//outer temparature of 1st block in degrees celcius
T4=70;....//outer temparature of 2nd block in degrees celcius 
//calculations
A=b*W;.....//area of the blocks in m
R1=L1/(K1*A);....//resistance of 2 blocks in degrees celcius/W
R2=1/(h*A);.....//contact resistance of 2 blocks in degrees celcius/W
Q=(T1-T4)/(R1+R2+R1);....//heat transfer through the blocks W
T=Q*R2;.....//temparature drop at the interface in degrees celcius
disp(Q,"heat transfer through the blocks W:")
disp(Q*R2,"temparature drop at the interface in degrees celcius:")

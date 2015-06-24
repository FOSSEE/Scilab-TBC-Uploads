clc;funcprot(0);//Example 1.3
//Initilisation of Variables
A=1.5;.........//Arrea of window glass in m^2
L=6*10^-3;.........//Thickness of window glass in mm
t1=30;........//Outer surface temparature in degree celsius
t2=20;........//Inner surface temparature in degree celsius
K=0.78;........//thermal conductivity of glass in W/(m*K)
//Calculations
Q=(K*A*(t1-t2))/L;........//Conduction heat transfer in W
disp(Q,"Conduction heat transfer in W")


// Exa 6.14
clc;
clear;
close;
format('v',6)
// Given data
R1 = 100;// in ohm
R2 = R1;// in ohm
R3 = 3.9;// in k ohm
R3 = R3 * 10^3;// in ohm
R_F = R3;// in ohm
Vx = -3.2;// in V
Vy = -3;// in V
// output voltage due to Vx, Vox = -(R_F/R1)*Vx and due to Vy, Voy = (R3/(R2+R3)) * (1+(R_F/R1))*Vy
// Vo = Vox + Voy =  -(R_F/R1)*Vx + (R_F/R1)*Vy   (as R1=R2 and R3=Rf)
//So, Aod = Vo/(Vx-Vy) = -R_F/R1;
Aod = -R_F/R1;
disp(Aod,"The closed loop differential gain is");
Vo = (-R_F/R1)*(Vx-Vy);// in V
disp(Vo,"The output voltage in V is");

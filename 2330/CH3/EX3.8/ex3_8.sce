// Exa 3.8
format('v',5)
clc;
clear;
close;
// given data
Vz= 12;// in V
Vout= Vz;// in V
Vin= 25;// in V
R_S= 180;// in Ω
R_L= 200;// in Ω
// The value of I_S 
I_S= (Vin-Vout)/R_S;// in A
// The value of I_L 
I_L= Vout/R_L;// in A
// The value of I_Z 
I_Z= I_S-I_L;// in A
I_S= I_S*10^3;// in mA
I_L= I_L*10^3;// in mA
I_Z= I_Z*10^3;// in mA
disp(I_S,"The value of I_S in mA is : ")
disp(I_L,"The value of I_L in mA is : ")
disp(I_Z,"The value of I_Z in mA is : ")

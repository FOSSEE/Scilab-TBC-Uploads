// Exa 3.9
format('v',5)
clc;
clear;
close;
// given data
disp("(i) For 200 Ω load resistance");
R_L= 200;// in Ω
Vz= 12;// in V
Vout= Vz;// in V
Vin= 25;// in V
R_S= 180;// in Ω
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
disp("(ii) For 400 Ω load resistance");
R_L= 400;// in Ω
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
disp("(iii) For 600 Ω load resistance");
R_L= 600;// in Ω
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
disp("(iv) For 800 Ω load resistance");
R_L= 800;// in Ω
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
disp("(v) For 1 kΩ load resistance");
R_L= 1*10^3;// in Ω
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




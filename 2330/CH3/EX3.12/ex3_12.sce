// Exa 3.12
format('v',6)
clc;
clear;
close;
// given data
disp("(i) For 15 V input voltage");
Vin= 15;// in V
Vz= 12;// in V
R_S= 200;// in Ω
R_L= 1*10^3;// in Ω
// The value of I_S 
I_S= (Vin-Vz)/R_S;// in A
// The value of I_L 
I_L= Vz/R_L;// in A
// The value of I_Z 
I_Z= I_S-I_L;// in A
I_S= I_S*10^3;// in mA
I_L= I_L*10^3;// in mA
I_Z= I_Z*10^3;// in mA
disp(I_S,"The value of I_S in mA is : ")
disp(I_L,"The value of I_L in mA is : ")
disp(I_Z,"The value of I_Z in mA is : ")
disp("(ii) For 20 V input voltage");
Vin= 20;// in V
// The value of I_S 
I_S= (Vin-Vz)/R_S;// in A
// The value of I_L 
I_L= Vz/R_L;// in A
// The value of I_Z 
I_Z= I_S-I_L;// in A
I_S= I_S*10^3;// in mA
I_L= I_L*10^3;// in mA
I_Z= I_Z*10^3;// in mA
disp(I_S,"The value of I_S in mA is : ")
disp(I_L,"The value of I_L in mA is : ")
disp(I_Z,"The value of I_Z in mA is : ")
disp("(iii) For 25 V input voltage");
Vin= 25;// in V
// The value of I_S 
I_S= (Vin-Vz)/R_S;// in A
// The value of I_L 
I_L= Vz/R_L;// in A
// The value of I_Z 
I_Z= I_S-I_L;// in A
I_S= I_S*10^3;// in mA
I_L= I_L*10^3;// in mA
I_Z= I_Z*10^3;// in mA
disp(I_S,"The value of I_S in mA is : ")
disp(I_L,"The value of I_L in mA is : ")
disp(I_Z,"The value of I_Z in mA is : ")
disp("(iv) For 30 V input voltage");
Vin= 30;// in V
// The value of I_S 
I_S= (Vin-Vz)/R_S;// in A
// The value of I_L 
I_L= Vz/R_L;// in A
// The value of I_Z 
I_Z= I_S-I_L;// in A
I_S= I_S*10^3;// in mA
I_L= I_L*10^3;// in mA
I_Z= I_Z*10^3;// in mA
disp(I_S,"The value of I_S in mA is : ")
disp(I_L,"The value of I_L in mA is : ")
disp(I_Z,"The value of I_Z in mA is : ")
disp("(v) For 35 V input voltage");
Vin= 35;// in V
// The value of I_S 
I_S= (Vin-Vz)/R_S;// in A
// The value of I_L 
I_L= Vz/R_L;// in A
// The value of I_Z 
I_Z= I_S-I_L;// in A
I_S= I_S*10^3;// in mA
I_L= I_L*10^3;// in mA
I_Z= I_Z*10^3;// in mA
disp(I_S,"The value of I_S in mA is : ")
disp(I_L,"The value of I_L in mA is : ")
disp(I_Z,"The value of I_Z in mA is : ")




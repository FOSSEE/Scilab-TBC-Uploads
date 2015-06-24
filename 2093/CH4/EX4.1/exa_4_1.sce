// Exa 4.1
clc;
clear;
close;
// Given data
V_CC= 10;// in volt
V_EE= -10;// in volt
I= 1;// in mA
I=I*10^-3;// in A
R_C= 10;// in kohm
R_C=R_C*10^3;// in kohm
V_BE=0.7;// in volt

i_C1= I/2;// in A
i_C2= i_C1;// in A
disp(i_C1*10^3,"Value of i_C1 in mA is : ")

V_C1= V_CC-i_C1*R_C;// in V
// For V_cm=0 volt
V_E= -0.7;// in volt
V_CE1= V_C1-V_E;// in volt
disp(V_CE1,"For V_cm =0 , The alue of V_CE1 in volt is ")

// For V_cm= -5 volt
V_cm= -5;// in V
V_B= V_cm;// in V
// From V_BE= V_B-V_E
V_E= V_B-V_BE;// in volt
V_CE1= V_C1-V_E;// in volt
disp(V_CE1,"For V_cm =-5V , The alue of V_CE1 in volt is ")

// For V_cm= 5 volt
V_cm= 5;// in V
V_B= V_cm;// in V
V_E= V_B-V_BE;// in volt
V_CE1= V_C1-V_E;// in volt
disp(V_CE1,"For V_cm =5V , The alue of V_CE1 in volt is ")

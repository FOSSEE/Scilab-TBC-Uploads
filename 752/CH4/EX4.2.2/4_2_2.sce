clc;
// page no 122
// prob no 4_2_2
//Two resistor at room temp are given with BW=100KHz
R1=20000
R2=50000
k=1.38*10^-23 //Boltzman constant in J/K
T=290
BW=100*10^3
//Determination of thermal noise voltage for 20Kohm resistor
En1=(4*R1*k*T*BW)^(1/2);
disp('uV',En1*(10^6),+'a)i)The value of RMS noise voltage is');
//Determination of thermal noise voltage for 50 kohm resistor
En2=En1*(R2/R1)^(1/2);
disp('uV',En2*(10^6),+'a)ii)The value of RMS noise voltage is');
//Determination of thermal noise voltage for 20K & 50k resistor in series 
Rser=R1+R2// Series combination of R1 & R2
En3=En1*(Rser/R1)^(1/2);
disp('uV',En3*(10^6),+'b)The value of RMS noise voltage is');
//Determination of thermal noise voltage for 20K & 50k resistor in parellel
Rpar=(R1*R2)/(R1+R2)// parallel combination of R1 & R2
En4=En1*(Rpar/R1)^(1/2);
disp('uV',En4*(10^6),+'c)The value of RMS noise voltage is');
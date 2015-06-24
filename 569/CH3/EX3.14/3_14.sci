//calculate the total resistance, error of each register and fractional error of total resistance
clc;
R1=250;
R2=500;
R3=375;
R_true=1/((1/R1)+(1/R2)+(1/R3));
disp(R_true, 'True value of resistance(ohm)=')
dR1= 0.025*R1;
dR2=-0.36*R2;
dR3=0.014*R3;
R1_effective=R1+dR1;
R2_effective=R2+dR2;
R3_effective=R3+dR3;
R_effective=1/((1/R1_effective)+(1/R2_effective)+(1/R3_effective));
disp(R_effective, 'Effective value of resistance(ohm)=')
Fractional_error=(R_true-R_effective)/R_true;
disp(Fractional_error,'Fractional_error') 

// Total resitance and total copper loss at full load

clc;
clear;

P=40*(10^3);
E1=2000;
E2=250;

n=E2/E1; //Transformation ratio

R1=1.15;
R2=0.0155;

R1w2=R1*(n^2);
R2w1=R2/(n^2);

Rt=R2+R1w2;

// Full load currents
I1=P/E1;
I2=P/E2;

Pc1=(I1^2)*R1; // Primary Loss
Pc2=(I2^2)*R2; // Secondary Loss

Pc= Pc1+Pc2; // Total Copper loss at full load

printf('a) The total resitance in terms of the secondary winding = %f ohms \n',Rt)
printf('b) Total copper loss on full load = %f watts',Pc)



// To calculate resistance of primary interms of secondary and vice versa

clc;
clear;

N1=90;
N2=180;

R2=0.233;
R1=0.067;

n=N2/N1; // Transformation ratio

R1w2=(n^2)*R1;
R2w1=R2/(n^2);

Rt=R1+R2w1; // Total resistance in terms of primary

printf('a) Resistance of primary in terms of the secondary = %f ohms \n',R1w2)
printf('b) Resistance of secondary in terms of the primary = %f ohms \n',R2w1)
printf('c) Total resistance of the transformer in terms of the primary winding =%f ohms \n',Rt)


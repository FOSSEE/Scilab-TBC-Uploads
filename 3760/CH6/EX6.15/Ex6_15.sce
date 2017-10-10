
clc;
sfl=0.05; //Full load slip
//Test/Tem=a
//Tfl/Tem=b
a=1/2;
b=1/1.6;
//As per the given equation we get smT1^2-2.5smT1+1=0
Q=[1 -2.5 1];
R=roots(Q);
smT1=R(2);

//For full load slip of 0.05 we get the equation smT2^2-0.20smT2+0.0025
Q1=[1 -0.20 0.0025];
R1=roots(Q1);
smT2=R1(1);

P=((smT1-smT2)/smT1)*100;
mprintf('Percentage reduction in rotor circuit resistance is %f percent',P);

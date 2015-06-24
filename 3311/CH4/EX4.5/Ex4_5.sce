// chapter 4
// example 4.5
// Determine the current taken by each SCR and value of equal resistors
// page-132
clear;
clc;
// given
// V1=0.9+2.4E-4*I_T1  (voltage characteristics of SCR 1)
// V2=1.0+2.3E-4*I_T2  (voltage characteristics of SCR 2)
I1=500, I2=1000, I3=1500, I4=2000; // in A (total current)
neta=10; // in percentage
// calculate
// since SCR are in parallel, therefore V1=V2 or
// 0.9+2.4E-4*I_T1=1.0+2.3E-4*I_T2. Simplifying this we get
// 2.4E-4*I_T1-2.3E-4*I_T2=0.1    (i)
// since I_T1+I_T2=I  (ii)
// from (i) in (ii), we get
// 2.4E-4*I_T1-2.3E-4*(I-I_T1)=0.1  or 
// 4.7E-4*I_T1=0.1+2.3E-4*I  
// simplifying for I_T1, we get
// I_T1=(0.1+2.3E-4*I)/4.7E-4
for I=500:500:2000
    I_T1=(0.1+2.3E-4*I)/4.7E-4;
    I_T2=I-I_T1;
    printf("\n\nFor I=%.f A,\t I_T1=%.f A \t and \t I_T2=%.f A",I,I_T1,I_T2);
end
// For 10 % sharing I_T1=1100 A and I_T2=900 A , therefore
I_T1=1100, I_T2=900; // in A
R=(0.1+2.3E-4*I-4.7E-4*I_T1)/(I_T1-I_T2);
printf("\n\nThe value of equal resistors is \t R=%.3f m-ohm",R*1E3);
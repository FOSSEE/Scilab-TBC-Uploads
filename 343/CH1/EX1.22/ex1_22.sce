V=20;                   //Assigning values to different parameters
I=1.5;
R1=10;
R2=15;
R3=15;
V10=R1*I;
Vab=V-V10;
I1=Vab/R2;
I2=Vab/R3;
I3=I-I1-I2;
R=Vab/I3;
disp("Ohms",R,"Value of unknown resistance");
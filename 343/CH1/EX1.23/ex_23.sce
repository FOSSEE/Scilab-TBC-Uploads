P=36;                      //Assigning values to different parameters
V=60;
R1=12;
R2=18;
R3=36;
I1=sqrt(P/R1);
V12=I1*R1;
Vr=V-V12;
I2=V12/R2;
I3=V12/R3;
I=I1+I2+I3;
R=Vr/I;
disp("Ohms",R,"Value of unknown resistance");
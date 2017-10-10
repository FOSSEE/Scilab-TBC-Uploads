//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_10.sce.

clc;
clear;
R1=4;
R2=3;
R3=5;
R4=6;

//CASE (a)
Vs1=80;
VA1=(Vs1/R3)/((1/R1)+(1/R2)+(1/R3)+(1/R4)); 
I1dash=VA1/R1;               //From ohm's law(V=IR)
I2dash=VA1/R2;
I3dash=(Vs1-VA1)/R3;
I4dash=VA1/R4;

//CASE (b)
Vs2=90;
VA2=(Vs2/R2)/((1/R1)+(1/R2)+(1/R3)+(1/R4));
I1doubledash=VA2/R1;
I2doubledash=(Vs2-VA2)/R2;
I3doubledash=VA2/R3;
I4doubledash=VA2/R4;

//CASE (c)
Is=20;
VA3=Is/((1/R1)+(1/R2)+(1/R3)+(1/R4));
I1tripledash=VA3/R1;
I2tripledash=VA3/R2;
I3tripledash=VA3/R3;
I4tripledash=VA3/R4;
I1=I1dash+I1doubledash+I1tripledash;
I2=-I2dash+I2doubledash-I2tripledash;
I3=I3dash-I3doubledash-I3tripledash;
I4=I4dash+I4doubledash+I4tripledash;
printf("\n  Current in 4 ohm resitance=%2.1f A \n",I1)
printf("\n  Current in 3 ohm resitance=%1.2f A \n",I2)
printf("\n  Current in 5 ohm resitance=%d A \n",I3)
printf("\n  Current in 6 ohm resitance=%2.1f A \n",I4)

//The answer vary dueto roundoff error

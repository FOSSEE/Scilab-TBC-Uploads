clc
//Example 16.4
disp('Given')
disp('R1=2 ohm R2=3 ohm L=1H C=125mF')
R1=2;R2=3 ; L=1;C=125*10^-3;
w0=sqrt(1/(L*C)-(R1/L)^2)
printf("w0=%d rad/s \n",w0)
//Input admittance is 1/R2+i*w*C+1/(R+I*w*L)
Y=1/3+%i/4+1/(2+%i*2)
printf("Y= %3.4f S \n",Y)
//Now input impedance at resonance 
Z=1/Y
printf("Z= %3.4f ohm \n",Z)
//Resonant frequency f=1/sqrt(L*C)
f=1/sqrt(L*C)
printf("f=%3.2f rad/s \n",f);


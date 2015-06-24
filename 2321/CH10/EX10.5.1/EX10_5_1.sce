//Example No. 10.5.1
clc;
clear;
close;
format('v',6);
N=5;//no. of turns
f=400;//MHz(Frequency)
c=3*10^8;//m/s(Speed of light)
lambda=c/(f*10^6);//m(Wavelength)
disp("Part (i)");
S=lambda/50;//m(Spacing between turns)
S_BY_lambda=1/50;//(Spacing/wavelength)
C_BY_lambda=sqrt(2*S_BY_lambda);//(Circumference/wavelength)
disp("Circumference is "+string(C_BY_lambda)+"*lambda");
C=sqrt(2*lambda*S);//m(Circumference)
disp(C,"Circumference in meter : ");
disp("Part (ii)");
Lo_BY_lambda=sqrt(S_BY_lambda^2+C_BY_lambda^2);//(Length/wavelength)
disp("Length of single turn is "+string(Lo_BY_lambda)+"*lambda");
Lo=sqrt(S^2+C^2);//m(Length of single turn)
disp(Lo,"Length of single turn in meter : ");
disp("Part (iii)");
Ln_BY_lambda=N*Lo_BY_lambda;//(Overall length/wavelength)
disp("Overall Length is "+string(Ln_BY_lambda)+"*lambda");
Ln=N*Lo;//m(Overall length)
disp(Ln,"Overall Length in meter : ");
disp("Part (iv)");
alfa=atand(S/C);//degree(Pitch angle)
disp(alfa,"Pitch angle, α in degree : ");

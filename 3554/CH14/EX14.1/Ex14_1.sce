// Exa 14.1

 clc;
clear all;


// Given data

fa=800; // The highest frequency(Hz)
Vp=2; //Volts


// Solution
disp("Let C1=0.1 micro farads")
C1=0.1; // micro farads
// Then Rf is given as
Rf=1/(2*%pi*C1*10^-6*fa);// Ohms
printf(' Calculated value of Rf = %.3f k Ohms. selecting nearest higher value of 2.2 k Ohms \n ',Rf/1000);

fb=20*fa;
R1=1/(2*%pi*C1*10^-6*fb);// Ohms
printf('The calculated value of R1 = %.1f Ohms. Let R1=100 Ohms \n',R1);

// Since R1*C1=Rf*Cf
Cf=R1*C1*10^-6/2200;//Rf is taken as 2.2 k Ohms as stated above
printf(' The value of Cf = %.5f micro farads. Let Cf=0.0047 micro farads \n',Cf*10^6);

Rom=(1/100+1/2200)^-1;
printf(' Rom = %.1f Ohms \n',Rom);

t=0:0.1*10^-3:1.5*2.50*10^-3;

Vin=Vp*sin(2*%pi*fa*t);//Input Voltage equation
xlabel("Time(sec)");
ylabel("Voltage(V)");
title("Input Voltage");
plot2d(t,Vin);
figure(1);

Vo=-2200*0.1*10^-6*Vp*2*%pi*fa*cos(2*%pi*800*t);//Output voltage equation
xlabel("Time(sec)");
ylabel("Voltage(V)");
title("Output Voltage");
plot2d(t,Vo);
// The answers vary due to round off error

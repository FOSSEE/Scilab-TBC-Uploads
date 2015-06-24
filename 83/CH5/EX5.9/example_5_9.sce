//Chapter 5
//Example 5.9
//page 165
//to determine power,voltage,compensating equipment rating
clear;clc;
A=0.85;
B=200;

//case(a)
Vs=275000;
Vr=275000;
a=5;b=75; //alpha and beta
Qr=0;
//from equation 5.62
d=b-asind((B/(Vs*Vr))*(Qr+(A*Vr^2*sind(b-a)/B))); //delta
Pr=(Vs*Vr*cosd(b-d)/B)-(A*Vr^2*cosd(b-a)/B);
printf('\n\ncase(a)\nPower at unity powerfactor that can be received =%0.1f MW',Pr/10^6);

//case(b)
Pr=150*10^6;
d=b-acosd((B/(Vs*Vr))*(Pr+(A*Vr^2*cosd(b-a)/B))); //delta
Qr=(Vs*Vr*sind(b-d)/B)-(A*Vr^2*sind(b-a)/B);
Qc=-Qr;
printf('\n\ncase(b)\nRating of the compensating equipment = %0.2f MVAR',Qc/10^6);
printf('\ni.e the compensating equipment must feed positive VARs into the line');


//case(c)
Pr=150*10^6;
Vs=275000;
//by solving the two conditions given as (i) and (ii), we get
Vr=244.9*10^3;
printf('\n\ncase(c)\nReceiving end voltage = %0.1f kV',Vr/1000);

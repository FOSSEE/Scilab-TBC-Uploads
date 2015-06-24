//Chapter 5
//Example 5.8
//page 162
//to estimate the torque angle and station powerfactor
clear;clc;
Sd1=15+%i*5;
Sd2=25+%i*15;
//case(a) cable impedance=j0.05pu
r=0;
x=%i*0.05;
PG1=20;
PG2=20;
Ps=5;Pr=5;
V1=1;
V2=1;
d1=asind(Ps*abs(x)/(V1*V2)); //delta1
V1=V1*(cosd(d1)+%i*sind(d1));
Qs=((abs(V1)^2)/abs(x))-((abs(V1)*abs(V2))*cosd(d1)/(abs(x)));
Qr=(((abs(V1)*abs(V2))*cosd(d1)/(abs(x)))-(abs(V1)^2)/abs(x));
Ql=Qs-Qr;
Ss=Ps+%i*Qs;
Sr=Pr+%i*Qr;
Sg1=Sd1+Ss;
Sg2=Sd2-Sr;
pf1=cos(atan(imag(Sg1)/real(Sg1)));
pf2=cos(atan(imag(Sg2)/real(Sg2)));
printf('\n\nCase(a)\nTotal load on station1=%d+j%0.3f pu',real(Sg1),imag(Sg1));
printf('\nPower factor of station1=%0.3f pu lagging',pf1);
printf('\n\Total load on station2=%d+j%0.3f pu',real(Sg2),imag(Sg2));
printf('\nPower factor of station2=%0.3f pu lagging',pf2);
//case(b) cable impedance=0.005+j0.05;
r=0.005;
PG1=20;
V1=1;V2=1;
Ps=5;
//from the eq(i) in the textbook,we can calculate d1
z=r+x;
theta=atand(imag(z)/real(z));
z=abs(z);
d1=acosd(z*(V1^2*cosd(theta)/z-Ps)/(V1*V2))-theta;
Qs=(V1^2*sind(theta)/z)-(V1*V2*sind(theta+d1)/z);
Qg1=5+Qs;
Pr=(V1*V2*cosd(theta-d1)/z)-(V1^2*cosd(theta)/z);
Pg2=25-Pr;
Qr=(V1*V2*sind(theta-d1)/z)-(V1^2*sind(theta)/z);
Qg2=15-Qr;
Ss=Ps+%i*Qs;
Sr=Pr+%i*Qr;
Sg1=Sd1+Ss;
Sg2=Sd2-Sr;
pf1=cos(atan(imag(Sg1)/real(Sg1)));
pf2=cos(atan(imag(Sg2)/real(Sg2)));
printf('\n\nCase(b)\nTotal load on station1=%d+j%0.3f pu',real(Sg1),imag(Sg1));
printf('\nPower factor of station1=%0.3f pu lagging',pf1);
printf('\n\Total load on station2=%d+j%0.3f pu',real(Sg2),imag(Sg2));
printf('\nPower factor of station2=%0.3f pu lagging\n\n',pf2);

//chapter 2
//example 2.6 page83
Rf=100*10^3;R1=1*10^3//given
Viovd=14*10^-6;//input offset voltage drift
Iiocd=.5*10^-9;//input offset current drift
Vin=7*10^-3;
T=45-25;//change in tempreture
R2=Rf/R1;R3=R2+1;
Ev=R3*Viovd*T+Rf*Iiocd*T;//error voltage
disp(Ev)
A=-Rf/R1;//gain
Vout=A*Vin+Ev
Vout=A*Vin-Ev

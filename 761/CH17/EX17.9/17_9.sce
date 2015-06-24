clc;
//page no 648
//prob no. 17.9
//A pulse magnetron with avg power=1.2kW & peak power=18.5kW & 1 pulse is generated every 10ms
Pavg=1.2*10^3;Pp=18.5*10^3;Tt=10*10^-3;
//Determination of duty cycle
D=Pavg/Pp;
disp(D,'The duty cycle is');
//Determination of length of pulse
Ton=D*Tt;
disp('sec',Ton,'The length of pulse is');
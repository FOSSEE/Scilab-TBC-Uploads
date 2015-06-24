//Exa 5.8
clc;
clear;
close;
format('v',7);

//Given Data :
deltaQ=850;//KJ
T1=1400+273;//Kelvin
T2=250+273;//Kelvin
T0=20+273;//Kelvin
Q=-1000;//KJ
deltaS1=Q/T1;//KJ/K(-ve as heat leaving)
deltaS2=abs(Q)/T2;//KJ/K(+ve Q as steam receives heat)
deltaS=deltaS1+deltaS2;//KJ/K
disp("Part (i) As energy leaves the hot gases : ");
A=(T1-T0)*deltaS1;//KJ
UA=T0*deltaS1;//KJ
disp(A,"Available energy in KJ : ");
disp(UA,"Unavailable energy in KJ : ");
disp("Part (ii) As energy enters the system : ");
A=(T2-T0)*deltaS2;//KJ
UA=T0*deltaS2;//KJ
disp(A,"Available energy in KJ : ");
disp(UA,"Unavailable energy in KJ : ");

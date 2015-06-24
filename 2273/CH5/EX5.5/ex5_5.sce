//Find load end voltage and efficieny
clear;
clc;
//soltion
//given
P=3000//kW//output
Vsl=11000//volts
pf=0.8//lagging//power factor
R=3*0.4;//ohm//resistance of each conductor
X=3*0.8;//ohm//reactance of each conductor
Vs=Vsl/sqrt(3);
Z=(R*pf+X*sind(acosd(pf)));
Vs_=round(Vs);
printf("Vr=%d - %.1fI\n",Vs_,Z);
I_=P*1000/(3*pf)
Vr=poly(0,"Vr");
printf("I=%.0f/Vr\n",I_);
A=2.4*I_-Vs_*Vr+Vr^2
answ=roots(A);
Vr=5837.041;
Vrl=sqrt(3)*Vr;
printf("Line voltage at the end(Vrl)= %d V\n",Vrl);
I=I_/Vr;
Ll=3*I*I*R;
nt=P*1000*100/(P*1000+Ll);
printf("Transmission efficiency= %.1f percent",nt)

//Exa 11.15
clc;
clear;
close;
//Given data :
Vs=66;//kV
Vmax=Vs*sqrt(2)/sqrt(3);//kV
D=6;//cm
d=2.5;//cm
d1=%e*d;//cm
gmax=2*Vmax/d/log(D/d);//kV/cm
disp(gmax,"Maximum stress without intersheath(kV/cm)");
//d1/d=d2/d1=D/d2=alfa(say)
alfa=(D/d)^(1/3);
d1=alfa*d;//cm
d2=alfa*d1;//cm
gmax=Vmax/(d/2*log(d1/d)+d1/2*log(d2/d1)+d2/2*log(D/d2));//kV/cm
V1max=gmax*d/2*log(d1/d);//kV
V2max=gmax*d1/2*log(d2/d1);//kV
Vpeak1=Vmax-V1max;//kV
disp(Vpeak1,"Peak voltage on 1st intersheath(kV)");
Vpeak2=Vpeak1-V2max;//kV
disp(Vpeak2,"Peak voltage on 2nd intersheath(kV)");

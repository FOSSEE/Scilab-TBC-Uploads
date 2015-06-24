clc;
warning("off");
printf("\n\n example13_7 - pg684");
// given
T_x0=300;  //[K]
Tw=400;  //[K]
L=0.013;  //[m]
alpha=2.476*(10^-5);  //[m^/sec]
h=600;  //[W/m^2*K]
pcp=3.393*(10^6);  //[J/m^3*K]
L=0.013;  //[m]
deltax=L/10;
betaa=0.5;
deltat=0.03;
deltat=betaa*((deltax)^2)*(1/alpha);
T_infinity=400;  //[K]
// to be sure that the solution is stable, it is customary to truncate this number
deltat=0.03;  //[sec]
// betaa=alpha*deltat*((1/deltax)^2);
    for i=1:11
    Told(i)=300;
end
a=((2*h*deltat)/(pcp*deltax));
b=((2*alpha*deltat)/(pcp*((deltax)^2)));
for j=1:11
Tnew(1)=(T_infinity*0.08162)+(Told(1)*(1-0.08162-0.8791))+(Told(2)*0.8791)
for k=1:9
    Tnew(k+1)=(betaa*Told(k+2))+((1-2*betaa)*(Told(k+1)))+(betaa*Told(k));
end
Tnew(11)=((2*betaa)*(Told(10)))
Told=Tnew;
end
disp(Told);











Na=10^17;
Nd=10^16;
ni=10^10;
a=0.0259;  //say a=K*T/q
V0=a*log(Na*Nd/ni^2);
printf('\n The value of V0 is %1.2fV',V0);
Va=0.5;
b=11.8*8.85*10^-14;
q=1.6*10^-19;
xp=sqrt(2*b*Nd*(V0-Va)/(q*Na*(Na+Nd)));
xn=sqrt(2*b*Na*(V0-Va)/(q*Nd*(Na+Nd)));
printf('\n The value of xp is %f*10^-6 cm',xp*10^6);
printf('\n The value of xn is %f*10^-5 cm',xn*10^5);
tn=10^-6;
tp=2*10^-6;
c=800;  //say c=μe
d=410;  //say d=μh
Ln=sqrt(0.0259*c*tn);
Lp=sqrt(0.0259*d*tp);
printf('\n The value of Ln is %f cm',Ln);
printf('\n The value of Lp is %f cm',Lp);
A=10^-2;
Cj=A*sqrt(q*b*Na*Nd/(2*(V0-Va)*(Na+Nd)))*10^10;
printf('\n The value of Cj is %f*10^-10 F',Cj);
Cs=(1/sqrt(a))*q*A*(ni^2)*((sqrt(tp*d)*(1/Nd))+(sqrt(tn*c)*(1/Na)))*exp(Va/a)*10^10;
printf('\n The value of Cs is %f*10^-10 F',Cs);
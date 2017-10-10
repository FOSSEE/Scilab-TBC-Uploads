a=1.6;  //say a=σn
q=1.6*10^-19;
b=4000;  //say b=μe
c=0.8;  //say c=σp
d=2000;  //say d=μh
e=0.0258;  //sat e=K*T/q
g=16*8.854*10^-14;
ni-2.1*10^13;
Nd=a/(q*b);
Na=c/(q*d);
printf('\n The value of Nd is %f/cm^3',Nd);
printf('\n The value of Na is %f/cm^3',Na);
Vbi=e*log(Nd*Na/(ni^2))/2.303;
printf('\n The value of Vbi is %fV',Vbi);
h=5*10^15;
i=1;
j=1;
W=((2*g*0.2467/(q*(h)))^0.5)*2;
printf('\n The value of depletion bandwidth is %f cm',W);
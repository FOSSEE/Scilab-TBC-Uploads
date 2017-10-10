ns=2*10^12;
E1=(1.11*10^-19)*((ns)^(2/3));
E2=(1.95*10^-19)*((ns)^(2/3));
printf('\n The value of E1 is %feV',E1*10^10);
printf('\n The value of E2 is %feV',E2*10^10);
Ef=0.24418;
nE=2.79*10^13;
a=0.026;  //say a=K*T/q
ns1=nE*a*log(1+exp((Ef-(E1*10^10))/a));
ns2=nE*a*log(1+exp((Ef-(E2*10^10))/a));
printf('\n The value of ns1 is %f*10^12',ns1*10^-12);
printf('\n The value of ns2 is %f*10^12',ns2*10^-12);
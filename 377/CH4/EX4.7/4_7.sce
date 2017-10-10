disp("g(E)=(8*pi*sqrt(2))*((m0/(ħ^2))^(3/2))*sqrt(E)");
a=9.1*(10^-31);  //say m0=a
b=6.626*(10^-34);  //say ħ=b
E=5*1.6*(10^-19);
pi=3.14;
f=0.026*1.6*(10^-19);
c=(8*pi*sqrt(2))*((a/(b^2))^(3/2))*sqrt(E);  //say gcentre=c
printf('\nthe value of gcentre in (m^-3)*(J^-1) is %f (m^-3)*(J^-1)',c);
d=(c)*(10^-6)*(1.6*(10^-19));
printf('\nthe value of gcentre in (cm^-3)*(eV^-1) is %f (cm^-3)*(eV^-1)',d);
e=(8*pi*sqrt(2))*((a/(b^2))^(3/2))*sqrt(f);  //say f=K*T=0.026eV & e=g at K*T
printf('\nthe value of g at K*T in (m^-3)*(J^-1) is %f (m^-3)*(J^-1)',e);
g=(e)*(10^-6)*(1.6*(10^-19));
printf('\nthe value of g at K*T in (cm^-3)*(eV^-1) is %f (cm^-3)*(eV^-1)',g);
h=g*0.026;
printf('\nthe volume density of states is %f (cm^-3)',h);
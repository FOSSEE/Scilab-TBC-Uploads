ni=1.5*10^16;
n=10^22;
Nd=10^22;
T=300;
p=(ni^2)/n;
printf('\n The value of p = %f',p);
a=0.913;  //say a=me/m0;
b=-log(10^22/(4.83*10^21*(T^1.5)*(a^1.5)))*0.026;  //say b=Ec-Ef
printf('\n The value of Ec-Ef is %f eV',b);
printf('\n The fermi energy is %f eV below the conduction band edge',b);
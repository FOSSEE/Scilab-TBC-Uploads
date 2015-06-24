clear
clc
t=[0;2;4;6];
XA=[0.75;0.64;0.52;0.39];
t1=4000;//kg.s/m3
density_s=1500;//kg/m3
De=5*10^-10;
d=2.4*10^-3;
//Assuming -rA=kCA*a,-da/dt=kd*a
//For this rate a plot of ln(CAo/CA-1)vs t should give a straight line
for i=1:4
    y(i)=log((1/(1-XA(i)))-1);
end
plot(y,t)
xlabel('t')
ylabel('ln(CAo/CA-1)')
//Guessing No Intrusion of Diffusional Resistance
//ln(CAo/CA-1)=ln(k*t1)-kd*t
coeff =regress(t,y);
kd=coeff(2);
k=exp(coeff(1))/t1;
L=d/6;
Mt=L*sqrt(k*density_s/De);
//Assuming Runs were made in regime of strong resistance to  pore diffusion
k1=((exp(coeff(1)))^2)*(L^2)*density_s/(t1*t1*De);
kd1=-2*coeff(2);
Mt=L*sqrt(k1*density_s/De);
printf("\n Rate equation(mol/kg.s) in diffusion free regime with deactivation is %f ",k1)
printf("CA*a with \n -da/dt(hr-1) is %f",kd1)
printf("a")
//In strong pore diffusion
k2=k1*sqrt(De/(k1*density_s));
printf("\n Rate equation(mol/kg.s) in strong pore diffusion resistance regime with deactivation is %f ",k2)
printf("CA*a^0.5/L with \n -da/dt(hr-1) is %f",kd1)
printf("a")





clear
clc
//Pressure(atm)
PAo=3.2;
R=0.082;//litre.atm/mol.k
T=390;//k
v=20;//litre/hr
W=0.01;///kg
CA_in=[0.1;0.08;0.06;0.04];
CA_out=[0.084;0.07;0.055;0.038];
CAo=PAo/(R*T);
FAo=CAo*v;
eA=3;
for i=1:4
XA_in(i)=(1-CA_in(i)/CAo)/(1+eA*CA_in(i)/CAo);
XA_out(i)=(1-CA_out(i)/CAo)/(1+eA*CA_out(i)/CAo);
dXA(i)=XA_out(i)-XA_in(i);
rA(i)=dXA(i)/(W/FAo);
CA_avg(i)=(CA_in(i)+CA_out(i))/2;
end
plot(CA_avg,rA)
xlabel('CA(mol/litre)')
ylabel('-rA(mol/hr.kg)')
coeff1=regress(CA_avg,rA)
k=coeff1(2)
printf("\n The rate of reaction(mol/hr.kg) is %f",k)
printf("CA")
disp('The answer slightly differs from those given in book as regress fn is used for calculating slope and intercept')



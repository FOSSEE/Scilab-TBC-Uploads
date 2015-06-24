clear;
clc;

//Example 14.10
//Caption : Program to illustrate the Concepts of Pue Gas Adsorption

subplot(2,1,1)
m=4.7087;
b=2.1941;
t=0.3984;
P=linspace(0,40,10);
N=(m.*P)./((b+(P.^t)).^(1/t));
plot(P,N)
m=0.6206;
b=1.5454;
t=1;
n=(m.*P)./((b+(P.^t)).^(1/t));
plot(P,n,'b--')
legend('Toth Equation','Langmuir Equation')
xtitle('Adsorption Isotherm(n vs P)','P(kPa)','n(mol/kg)')

subplot(2,1,2)
C0=0.4016;
C1=-0.6471;
C2=0.4567;
C3=-0.12;
n=linspace(0,1.6,20);
K=C0+(C1*n)+(C2*(n^2))+(C3*(n^3));
plot(n,K)
n=linspace(0,0.5,20);
K=C0+(C1*n);
plot(n,K,'b--')
legend('Cubic Polynomial fit','Langmuir Equation')
xtitle('n/P vs n for Ethylene','n(mol/kg)','n/P(mol/kg/kPa)')

//End
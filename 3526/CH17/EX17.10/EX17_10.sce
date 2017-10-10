clc;funcprot(0);//EXAMPLE 17.10
//page 554
// Initialisation of Variables
psi=500000;...............//Modulus Elasticity of Epoxyin psi
f=500;.....................//Force applied on Epoxy in pounds
q=0.10;....................//Stretchable distence in in.
rho=0.0451;..................//Density of Epoxy in lb/in^3
d=1.24;....................//Diameter of Epoxy in in
e=12000;....................//Yeild Strngth of Epoxy in psi
E2=77*10^6;................//Modulus of high Carbon Fiber in psi
Fc=0.817;..................//Volume fraction of Epoxy remaining
Fc2=0.183;..................//Min volume Faction of Epoxy 
rho2=0.0686;...............//Density of high Carbon Fiber in lb/in^3
emax=q/120;................//MAX. Strain of Epoxy
E=psi*emax;................//Max Modulus of elasticity in psi
A=f/E;....................//Area of Structure in in^2
W=rho*%pi*((d/2)^2)*120;...........//Weight of Structure in ib
c=W*0.80;..........................//Cost of Structure in Dollars
Ec=e/emax;..................//Minimum Elasticity of composite in psi
A2=f/e;....................//Area of Epoxy in in^2
At=A2/Fc;................//Total Volume of Epoxy
V=At*120;................//Volume of Structure in in^3
W2=((rho2*Fc2)+(rho*Fc))*V;.............//Weight of Structure in lb
Wf=(Fc2*1.9)/((Fc2*1.9)+(Fc*1.25));...........//Weight Fraction of Carbon 
Wc=Wf*W2;.....................//Weight of Carbon
We=0.746*W2;.................//Weight of Epoxy
c2=(Wc*30)+(We*0.80);.............//Cost of Each Struct.
 disp(c2,"Cost of Each Struct.:")

clc;funcprot(0);//EXAMPLE 17.9
//page 542
// Initialisation of Variables
psi=10*10^6;..............//Modulus of elasticity of 7075-T6 in psi
psi1=55*10^6;..............//Modulus of elasticity of Boron fiber in psi
psi2=11*10^6;..............//Modulus of elasticity of Typical AL-LI in psi
f1=0.6;...............//Volume fraction of Boron Fiber
f2=0.4;...............//Volume fraction of typical AL-LI
rho1=0.085;...........//Density of  Boron Fibers in lb/in*3
rho2=0.09;...........//Density of typical AL-LI in lb/in^3
//Calculations
sm1=psi/(((2.7*(2.54)^3))/454);..........//Specific Modulus of current alloy in in.
rho=(f1*rho1)+(f2*rho2);........//Density of composite in lb/in^3
Ec=(f1*psi1)+(f2*psi2);........//Modulus of elasticity of mixture in psi
sm2=Ec/rho;..........//Specific Modulus of composite in in.
disp(sm1,"Specific Modulus of current alloy in in.:")
disp(rho,"Density of composite in lb/in^3:")
disp(Ec,"Modulus of elasticity of mixture in psi:")
disp(sm2,"Specific Modulus of composite in in.:")

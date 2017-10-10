clc;funcprot(0);//EXAMPLE 17.7
// Initialisation of Variables
f1=0.4;...............//Volume fraction of Fiber  
f2=0.6;...............//Volume fraction of Aluminium 
rho1=2.36;...........//Density of Fibers in g/cm^3
rho2=2.70;...........//Density of Aluminium in g/cm^3
psi1=55*10^6;..............//Modulus of elasticity of Fiber in psi
psi2=10*10^6;..............//Modulus of elasticity of Aluminium in psi
ts1=400000;..............//Tensile strength of fiber in psi
ts2=5000;..............//Tensile strength of Aluminium in psi
//Calculations
rho=(f1*rho1)+(f2*rho2);........//Density of mixture in g/cm^3
Ec1=(f1*psi1)+(f2*psi2);........//Modulus of elasticity of mixture in psi
TSc=(f1*ts1)+(f2*ts2);........//Tensile Strength of mixture in psi
Ec2=1/((f1/psi1)+(f2/psi2));........//Modulus of elasticity  perpendicular to fibers in psi
disp(rho,"Density of mixture in g/cm^3:")
disp(Ec1,"Modulus of elasticity of mixture in psi:")
disp(TSc,"Tensile Strength of mixture in psi:")
disp(Ec2,"Modulus of elasticity  perpendicular to fibers in psi:")

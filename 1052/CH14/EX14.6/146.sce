clc;
//Example 14.6
//page no 159
printf("Example 14.6 page no. 159\n\n");
//ethyl alcohol is pumped through a horizontal tube
rho=789//density .kg/m^3
meu=1.1e-3//viscosity ,kg/m-s
k=1.5e-6//roughness,m
L=60//length of tube,m
q=2.778e-3//flow rate 
g=9.807
h_f=30//friction loss
A=(L*q^2)/(g*h_f)
A=1.574e-7
//D=0.66*[[(k^1.25)*(A^4.75)+meu*(A^5.2)/(q*rho)]^.04]
D=0.0377
//calculate velocity of alcohol in the tube
S=3.14*(D)^2/4//surface area
v=q/S//velocity
v=3.93//velocity
neu=1.395e-6//dynamic viscosity
R_e=D*v/neu//reynolds no 
printf("\n R_e=%f ",R_e);//printing mistake in book
printf("\n since R_e is more than 4000 flow is turbulent");


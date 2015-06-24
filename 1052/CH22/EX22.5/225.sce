clc;
//Example 22.5
//page no 299
printf("Example 22.5 page no 299\n\n");
//water for a processing plant is required to be stored in a reservoir
//assume the properties of water at 20 deg C are
rho=998//density,kg/m^3
meu=0.001//viscosity,N.s/m^2
L=120//length of pipe,m
D=0.15//diameter  of pipe,m
S=(%pi/4)*D^2//cross sectional area of pipe
//given:
q=1.2/60//volumetric flow rate,m^3/s
v=q/S//flow velocity,m/s
R_e=D*v*rho/meu//reynolds no
printf("\n reynolds no R_e=%f ",R_e);
//from value of R_e ,flow is clearly turbulent
k=0.0005//roughness factor for galvanized iron
K_r=k/D//relative roughness
f=0.0053//fricion factor from fig. 14.2
h_f=4*f*(L/D)*(v^2/2)//friction loss of energy
printf("\n h_f frictional  loss=%f J ",h_f);
//for right elbows (from table 18.1),the estimated value of resistance coff. K for one regular 90 deg elbows is 0.5
K=4//resstance coeff.
V_h=v^2/2//velociy head
e_l=K*V_h//the total loss from the elbows
printf("\n e_l total elbow loss=%f J/kg",e_l);
//the energy to move 1 kg of water against a head of 22m of water is
z=22//height,m
g=9.81//grav. acc,m/s^2
PE=z*g
printf("\n potential energy PE=%f J/kg",PE);
TE = h_f + e_l  + PE//total requirement per kg
printf("\n total energy TE=%f J/kg",TE);
W_dot_s= TE*q*rho//theoretical power requirement 
printf("\n theoritical power W_dot_s=%f J/s",W_dot_s); 
h=TE/g//head equivalent to the energy requirement 
printf("\n equivalent head h=%f m ",h);








 

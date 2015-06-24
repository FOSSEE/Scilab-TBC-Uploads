//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.4-3
//Principles of Momentum Transfer and Applications
//given data
H1=1.83;
DT1=H1;
V1=(%pi*DT1*DT1*H1)/4;
V2=3*V1;//given
R=(V2/V1)^(1/3);
DT2=R*DT1;
Da1=0.61;
Da2=R*Da1;
W1=0.122;
W2=R*W1;
J1=0.15;
J2=R*J1;
N1=1.5;//no. of revs
N2=N1*((1/R)^(2/3))
rho=929;
mu=0.01;
Re=(Da2*Da2*N2*rho)/(mu)
Np=5;
P2=Np*rho*(N2^3)*(Da2^5);
P1=Np*rho*(N1^3)*(Da1^5);
//a)
N2=N1*((1/R)^(2/3));
sP1=P1/V1;
sP2=P2/V2;

mprintf("scaled up no. of revs %f rev/s",N2);
mprintf("scaled up Power %f W",P2);
mprintf(" power per unit volume= %f kW/m3",sP1/1000)
if (sP1/1000)<0.8  then
    disp(" Value of power is less than permissible condition(0.8 kW/m3 for mass transfer)")
end
mprintf(" scaled up Power %f m3",P2);
mprintf(" power per unit volume %f W/m3",(P2/(V2*1000)));
//b)
N2b=N1*(1/R);
mprintf(" scaled up revolutions %f rev/s",N2b);
P2b=Np*rho*(N2b^3)*(Da2^5);
mprintf(" scaled up Power %f kW",P2b);
mprintf(" power per unit volume %f W/m3",(P2b/V2));


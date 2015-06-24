//Transport Processes and Seperation Process Principles
//Chapter 3//Example 3.5-1
//Principles of Momentum Transfer and Applications
//given data
Kd=15.23;
nd=0.4;
D=0.0524;
V=0.0728;
L=14.9;
rho=1041;
delP=(Kd*4*L/D)*((8*V/D)^nd);//pressure drop
Ff=delP/rho;//friction loss
nd=0.4;
g=8;
Re=((D^nd)*(V^(2-nd))*rho)/(Kd*(g^(nd-1)));
f=16/Re;//friction factor
delP=4*f*rho*(L/D)*(V*V/2);
mprintf("pressure drop= %f kN/m2",delP/1000)

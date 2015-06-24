//Transport Processes and Seperation Process Principles
//Chapter 6
//Example 6.2-4
//Principles of Mass Transfer
//given data
//si units
pa1=(0.555/760)*101325;//partial pressure of napthalene at one end
pa2=0;//partial pressure of water at other end
r1=2/1000;
Dab=(6.92/1000000);//diffusivity of H20-air mixture
P=101325;
pb1=P-pa1;
pb2=P-pa2;
pbm=(pb2+pb1)/2;
R=8314;//gas constant
T=318;//temp of mixture
z2=0.5;//z2-z1= dist b/w 2 ends
z1=0;
Na=(Dab*P*(pa1-pa2))/(R*T*r1*pbm);//ficks law of diffusion
mprintf("the flux at steady state for A is %f kg mol A/s m2",Na)

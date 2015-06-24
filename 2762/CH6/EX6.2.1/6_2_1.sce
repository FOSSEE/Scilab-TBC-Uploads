//Transport Processes and Seperation Process Principles
//Chapter 6
//Example 6.2-1
//Principles of Mass Transfer
//given data
pa2=1.013*10000;//partial pressure of NH4 at one end
pa1=00.507*10000;//partial pressure of NH4 at other end
Dab=0.23/10000;//diffusivity of He-N2 mixture
R=8314;//gas constant
T=298;//temp of mixture
z2=0.1;//z2-z1= dist b/w 2 ends
z1=0;
Ja=(Dab*(pa1-pa2))/(R*T*(z2-z1));//ficks law of diffusion
P=1.013*100000
Jb=(Dab*((P-pa1)-(P-pa2))/(R*T*(z2-z1)));
mprintf("the flux at steady state for A is %f kg mol He/s m2",Ja);
mprintf("the flux at steady state for B is %f kg mol He/s m2",Jb);

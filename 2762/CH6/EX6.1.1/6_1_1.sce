//Transport Processes and Seperation Process Principles
//Chapter 6
//Example 6.1-1
//Principles of Mass Transfer
//given data
pa1=0.6*101325;//partial pressure of He at one end
pa2=0.2*101325;//partial pressure of He at other end
Dab=0.687/10000;//diffusivity of He-N2 mixture
R=8314;//gas constant
T=298;//temp of mixture
z2=0.2;//z2-z1= dist b/w 2 ends
z1=0;
Jaz=(Dab*(pa1-pa2))/(R*T*(z2-z1));//ficks law of diffusion
mprintf("the flux at steady state is %f kg mol He/s m2",Jaz)
//end

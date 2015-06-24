//Transport Processes and Seperation Process Principles
//Chapter 6
//Example 6.2-2
//Principles of Mass Transfer
//given data
//english units
pa1=(17.54/760);//partial pressure of water at one end
pa2=0;//partial pressure of water at other end
Dab=(0.25/10000)*(3.875*10000);//diffusivity of H20-air mixture
P=1;
pb1=P-pa1;
pb2=P-pa2;
pbm=(pb2-pb1)/(log(pb2/pb1)/log(%e));
R=0.73;//gas constant
T=528;//temp of mixture
z2=0.5;//z2-z1= dist b/w 2 ends
z1=0;
Na=(Dab*P*(pa1-pa2))/(R*T*(z2-z1)*pbm);//ficks law of diffusion
mprintf("the flux at steady state for A is %f lb mol /h m2",Na)
//si units
pa1si=(17.54/760)*101325;//partial pressure of water at one end
pa2si=0;//partial pressure of water at other end
Dabsi=(0.25/10000);//diffusivity of H20-air mixture
Psi=101325;
pb1si=Psi-pa1si;
pb2si=Psi-pa2si;
pbmsi=(pb2si-pb1si)/(log(pb2si/pb1si)/log(%e));
Rsi=8314//gas constant
Tsi=293;//temp of mixture
z2si=0.5*0.3048;//z2-z1= dist b/w 2 ends
z1si=0;
Nasi=(Dabsi*Psi*(pa1si-pa2si))/(Rsi*Tsi*(z2si-z1si)*pbmsi);//ficks law of diffusion
mprintf(" the flux at steady state for A is %f kg mol /s m2",Nasi)

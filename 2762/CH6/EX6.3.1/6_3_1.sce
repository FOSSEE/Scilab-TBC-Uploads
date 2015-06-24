//Transport Processes and Seperation Process Principles
//Chapter 6
//Example 6.3-1
//Principles of Mass Transfer
//given data
//si units
Dab=(0.74/(10^9));//diffusivity of H20-air mixture
Mb=18.02;//
Ma=46.05;
na2=6.8;
nb2=100-na2;
xa2=(na2/Ma)/((na2/Ma)+(nb2/Mb));//partial pressure of water at one end
xb2=1-xa2;//partial pressure of water at other end
na1=16.8;
nb1=100-na1;
xa1=(na1/Ma)/((na1/Ma)+(nb1/Mb))
M2=100/((na2/Ma)+(nb2/Mb));
xb1=1-xa1;
M1=100/((na1/Ma)+(nb1/Mb));
xbm=(xb1+xb2)/2;
rho1=972.8;
rho2=988.1;
Cav=((rho1/M1)+(rho2/M2))/2;
z=2/1000;
Na=(Dab*Cav*(xa1-xa2))/(z*xbm);//ficks law of diffusion
mprintf("the flux at steady state for A is %f kg mol /s m2",Na);

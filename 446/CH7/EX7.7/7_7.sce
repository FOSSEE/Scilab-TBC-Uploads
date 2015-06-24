clear 
clc
disp('Exa-7.7');
n1=1;n2=2;hc=1240;    //hc=1240 eV.nm
E=(-13.6)*((1/n2^2)-(1/n1^2));   //Energy calcuation
w=hc/E;                   //wavelength
u=9.27*10^-24; B=2;          //constants
delE= u*B/(1.6*10^-19);     //change in energy
delw=((w^2/hc))*delE;             //change in wavelength
printf('The change in wavelength is %.5f nm.',delw);
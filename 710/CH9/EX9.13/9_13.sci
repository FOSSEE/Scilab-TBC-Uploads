clc();
clear;
//To determine the accelerating voltage applied 
h=6.626*10^-34;                         //plancks constant
c=3*10^8;                               //speed of light
lambda=0.03;                            //wavelength in nm
E=(h*c)/(lambda*10^-9);                 //energy of photon 
TE=((E*100)/80);                        //Total energy.E=80% of TE in J
TE=TE/(16.0017*10^-17)                          //Total energy in kV
printf("The electron must have been accelerated through a potential difference of %f kV",TE); 
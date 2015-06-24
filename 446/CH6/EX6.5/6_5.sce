clear     
clc
disp('Exa-6.5');
sl=364.5;n=3;           //given variables and various constants are declared in the subsequent steps wherever necessary   
w1=sl*(n^2/(n^2-4));     //longest wavelength of balmer 
c=3*10^8;
f1=c/(w1*10^-9);         //corresponding freq.
n0=1;n=2;                 
w2=91.13*(n^2/(n^2-n0^2)); //first longest of lymann   
f2=c/(w2*10^-9);          //correspoding freq
n0=1;n=3
w3=91.13*(n^2/(n^2-n0^2));      //second longest of lymann
f3=3*10^8/(w3*10^-9)             //corresponding freq.
printf('The freq. corresponding to the longest wavelength of balmer is %e & First longest wavelength  of Lymann is %e.\n',f1,f2);
printf('The sum of which s equal to %e\n',f1+f2);
printf('The freq. corresponding to 2nd longest wavelength was found out to be %e\n.Hence Ritz combination principle is satisfied.',f3);

    
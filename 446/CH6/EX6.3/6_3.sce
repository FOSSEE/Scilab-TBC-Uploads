clear   
clc
disp('Exa-6.3');
Z=79;x=1.44;K=8*10^6;z=2;    //where x=e^2/4*pi*epsi0;z=2 for alpha particles
d=z*x*Z/K;                   //distance
printf('The distance of closest approasch is %.2e nm.',d*10^-9)
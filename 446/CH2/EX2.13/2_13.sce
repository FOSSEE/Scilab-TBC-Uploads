clear    
clc
disp('Exa-2.13');
E=10.51; mc2=0.511; //all the values are in MeV
p=sqrt(E^2-mc2^2);   //momentum of the electron
printf('The momentum of electron is %.1f MeV/c\n',p); 
v=sqrt(1-(mc2/E)^2);  //velocity in terms of c
printf('The velocity of electron is %.4f c',v);
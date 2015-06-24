clear    
clc
disp('Exa-2.14');
k=50;mc2=0.511*10^-3;c=3*10^8; // all the values of energy are in GeV and c is in SI units
v=sqrt(1-(1/(1+(k/mc2))^2));   //speed of the electron in terms of c
k=c-(v*c);                       //difference in velocities
printf('Speed of the electron as a  fraction of c is %.12f*10^-12.\n',v*10^12); // v=(v*10^12)*10^-12; so as to obtain desired accuracy in the result
printf('The difference in velocities is %.1f cm/s.',k*10^2);
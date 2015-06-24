clear   
clc
disp('Exa-3.3(a)');
w=650*10^-9;h=6.63*10^-34;c=3*10^8;  //given values and constant taken in comfortable units
E=h*c/w; printf('The Energy of the electron is %.3e J ',E);
E=E/(1.6*10^-19);printf('which is equivalent to %f eV\n',E);
printf('The momentum of electron is p=E/c i.e %.2f/c \n',E);
disp('Exa-3.3(b)');
E2=2.40;                          //given energy of photon.
w2=h*c*10^9/(E2*1.6*10^-19);      //converting the energy in to eV and nm 
printf('The wavelength of the photon is %.2f nm',w2);
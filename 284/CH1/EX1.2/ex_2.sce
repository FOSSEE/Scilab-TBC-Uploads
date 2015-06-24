// Chapter 1_Principles of Quantum Mechanics
//Caption_Broglie wavelength
//Ex_2//page 5
disp("Velocity of electron is 10^7 cm/s");
h=6.625*(10^-34);// Plank's constant
m=9.11*(10^-31); //Mass of electron
v=10^5;  //Velocity of electron

p=m*v;   //Momentum
printf('Momentum is %fd \n',p)
lambda=(h/p)*10^10;  //De Broglie's wavelength in angstorm
printf('The De Broglie wavelength is %fd Angstorm\n',lambda);

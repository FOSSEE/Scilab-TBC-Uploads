// Chapter 1_Principles of Quantum Mechanics
//Caption_Electron in an infinite potential well
//Ex_3//page 14
disp("Width of electrons infinite potential well is 5 Angstorm");
h=1.054*(10^-34);// Plank's constant
m=9.11*(10^-31); //Mass of electron
v=10^5;  //Velocity of electron
a=5*(10^-10);
c=1.6*(10^-19);
n1=1;    // assume
En1=((h^2)*(n1^2)*(%pi^2)/(2*m*a^2))/c
printf('Energy in first energy level is %fd eV\n',En1)
n2=2;.....//assume
En2=((h^2)*(n2^2)*(%pi^2)/(2*m*a^2))/c
printf('Energy in first energy level is %fd eV\n',En2)
n3=3;     //assume
En3=((h^2)*(n3^2)*(%pi^2)/(2*m*a^2))/c
printf('Energy in first energy level is %fd eV\n',En3)

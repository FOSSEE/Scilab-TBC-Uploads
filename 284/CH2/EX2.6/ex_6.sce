// Chapter 2_Introduction to the quantum theory of solids
//Caption_The Distribution function and the Fermi Energy
//Ex_6//page 71
T=300   // Temperature in kelvin
x=3     //x=    (E-Ef)/kT
fE=100/(1+%e^x);
printf('Probability that an energy level 3kT above the Fermi energy is occupied by an electron is %1.2fd%%\n',fE)
// Chapter 3_The Semiconductor in Equilibrium
//Caption_Position of Fermi Energy level
//Ex_13//page 116
T=300    //temperature in kelvin
Na=10^16   // acceptor carrier impurity in per cm cube
Ef=0.20   //Fermi energy is Ef eV below the conduction band edge
Nc=2.8*(10^19)
Nd=Na+(Nc*exp(-Ef/0.0259))
printf('The require donor impurity concentration is %fd per cm cube',Nd)
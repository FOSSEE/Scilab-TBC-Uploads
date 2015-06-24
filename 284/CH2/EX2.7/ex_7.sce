// Chapter 2_Introduction to the quantum theory of solids
//Caption_The Distribution function and the Fermi Energy
//Ex_7//page 72
fE=0.01
Ef=6.25    //Fermi energy in eV
a=1/(1-fE)
x=log(a-1)
k=1.38*(10^-23)
T=(-0.30)*1.6*(10^-19)/(k*x)
printf('Temperature at which there is a 1 percent probability that an energy state is empty is %3.1fd K\n',T)
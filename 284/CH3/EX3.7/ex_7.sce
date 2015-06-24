// Chapter 3_The Semiconductor in Equilibrium
//Caption_Statistics of acceptors and donors
//Ex_7//page 108
T=300;
Nd=10^16    // donor concentration per cm cube
kT=0.0259
Ecd=0.045   //Ec-Ed
Nc=2.8*(10^19);
x=1/(1+(Nc/(2*Nd))*exp(-(Ecd)/kT))
printf('Fraction of total electrons still in the donor state is %fd ',x)

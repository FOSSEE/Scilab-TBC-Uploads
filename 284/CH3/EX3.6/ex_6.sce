// Chapter 3_The Semiconductor in Equilibrium
//Caption_Extrinsic Semiconductor
//Ex_6//page 104
nf=2    //nf=(Ef-Ec)/kT
Fe=52   //Fermi energy is above the conduction band by Fe meV
T=300;
Nc=2.8*(10^19);
F(nf)=2.3 // Value of fermi dirac integral from the graph
no=(2/((%pi)^0.5))*Nc*F(nf)
printf('Electron concentration using fermi dirac integral is %fd per cm cube ',no)
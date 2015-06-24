// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Equilibrium electrostatics
//Ex_8//page 333
Nd=10^16    //donor impurity
Na=10^16    //acceptor impurity
ni=2.4*10^13     //intrinsic ion concentration
T=300
e=1.6*10^-19
xi_n=4.13     //electron affinity
xi_p=4.07
del_Ec=(xi_n-xi_p)    //difference between two conduction band energies
del_Eg=1.43-0.67

del_Ev=del_Eg-del_Ec    //difference between two valence band energies
pno=ni^2/Nd
Ncp=6*10^18
Ncn=7*10^18
Vbi=del_Ev+(0.0259*log(Na*Ncp/(pno*Ncn)))
printf('Difference between two conduction band energies is %1.2f eV ,difference between two valence band energies is %f eV and Vbi=%fV',del_Ec,del_Ev,Vbi)
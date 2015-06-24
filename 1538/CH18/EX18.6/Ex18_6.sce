//example-18.6
//page no-550
//given
//resistivity of copper , nickel and silver are
rhoCu=0.015*10^-6  //ohm m
rhoNi=0.012*10^-6  //ohm m
rhoAg=0.016*10^-6  //ohm m
//atomic percent of nickle and silver
CNi=0.25
CAg=0.40
//the resistivity of Cu-Ni-Ag alloy at 300 K
rho=rhoCu+(rhoNi*CNi)+(rhoAg*CAg)  //ohm m
printf ("the resistivity of Cu=Ni-Ag alloy is %e ohm m",rho)

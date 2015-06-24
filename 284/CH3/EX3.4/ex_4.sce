// Chapter 3_The Semiconductor in Equilibrium
//Caption_Intrinsic fermi level position
//Ex_4//page 92
T=300;    //temperature in kelvin
mnr =1.08    //relative effective mass of negative charge carrier
mpr=0.56     //relative effective mass of positive charge carrier
kT=0.0259
Efm=(3/4)*kT*log(mpr/mnr)     //The intrinsic fermi level with respect to the center of bandgap
EfmF=-(Efm)*1000
printf('The intrinsic feremi level in silicon is %1.1fd meV below the midgap energy',EfmF)

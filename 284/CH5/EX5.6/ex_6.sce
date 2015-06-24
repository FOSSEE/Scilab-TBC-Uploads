// Chapter 5_Non equilibrium excess carriers in semiconductors
//Caption_Quasi Energy Fermi Levels
//Ex_6//page 194
T=300    //temperature in kelvin
no=10^15   //carrier concentration
ni=10^10   //intrinsic concentration
po=10^5    
deln=10^13   //excess carrier concentration
delp=10^13 
EfFi=0.0259*log(no/ni)    //fermi level for thermal equilibrium
EfnEfi=0.0259*log((no+deln)/ni)
EfiEfp=0.0259*log((po+delp)/ni)
printf('Quasi fermi level for electrons in non equilibrium is %1.4f eV and for hholes is %1.3f eV ',EfnEfi,EfiEfp)

// Chapter 3_The Semiconductor in Equilibrium
//Caption_Extrinsic Semiconductor
//Ex_5//page 101
T=300    //temperature in kelvin
Nc=2.8*(10^19);
Nv=1.04*(10^19);    //
Fe=0.25    //Fermi energy is FeeV below the conduction band
Eg=1.12    // Bandgap energy of silicon is Eg in eV
no=Nc*exp(-Fe/0.0259);
po=Nv*exp(-(Eg-Fe)/0.0259);
printf('Thermal equilibrium concentration of electrons is %1.2fd cm ^-3 and of holes is %1.2fd cm^-3 ',no,po)
//example-15.3
//page no-463
//given
//latent heat of fusion of pure gold
deltaHf=-1.16*10^9  //J/m^2
//surface free energy
gama=0.132  //J/m^2
//melting point of gold
Tm=1064+273  //K
//supercooling value
deltaT=230  //K
//critical radius is given by R intead of r* just for notation
R=(-2*gama*Tm/deltaHf)*(1/deltaT)*10^9  //nm
printf ("critical radius of pure gold at 230 degree celcius is %f nm",R)
//change in free energy of vapours is
deltaGv=deltaHf*deltaT/Tm  //J/m^3
//activation free energy
//for notation deltaG* we  use deltaG
deltaG=16*(%pi)*(gama)^3/3/(deltaGv)^2  //J
printf ("the activation free energy is %e J",deltaG)

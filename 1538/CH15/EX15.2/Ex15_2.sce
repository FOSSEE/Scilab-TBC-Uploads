//example-15.2
//page no-463
//given
//temp
T=983+273  //K
Tm=1083+273  //K
deltaT=Tm-T  //K
//given that
//latent heat of fusion of copper
deltaHm=1.88*10^9  //J/m^3
//interface energy/unit area
gammasL=0.144  //J/m^2
//change in free energy of vapour
deltaGv=deltaHm*deltaT/Tm    //J/m^3
//critical radius of copper during solidification
//for notation only we are using r*=R
R=2*gammasL/deltaGv*10^10  //A
printf ("the critical radius of copper during solidification is %f A",R)

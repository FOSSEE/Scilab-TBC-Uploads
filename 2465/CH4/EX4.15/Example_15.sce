//Chapter-4,Example 15,Page 96
clc;
close;

P1= 528   // pressure in mm of Hg

P2= 760   // pressure in mm of Hg

T2=100+273   //teperature in Kelvin

delta_Hv= 545.5 *18    // latent heat of vapourisation of water in J/mol

R= 1.987  //gas constant

//from the integrated form of Clausius-Clapeyron equation

T1= 1/((log10(P2/P1)*2.303*R/delta_Hv)+(1/T2))

printf('the temperature of water is %.f K',T1)

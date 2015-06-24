clc
//initialisation of variables
P= 100 //psia
n= 0.97
hf= 298.4 //Btu/lb
hfg= 888.8 //Btu/lb
hg= 1187.2 //Btu/lb
//CALCULATIONS
hx= hf+n*hfg
hx1= hg-(1-n)*hfg
//RESULTS
printf ('Enthalpy= %.f Btu/lb',hx)
printf (' \n Precise Enthalpy= %.1f Btu/lb',hx1)

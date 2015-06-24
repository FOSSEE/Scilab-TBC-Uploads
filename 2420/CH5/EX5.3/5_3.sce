clc
clear
//Initialization of variables
x=0.97
hg=1187.2 //Btu/lb
hf=298.40 //Btu/lb
hfg=888.8 //Btu/lb
//calculations
hx1=x*hg+(1-x)*hf
hx2=hf+x*hfg
hx3=hg-(1-x)*hfg
//results
printf("\n In case 1, enthalpy = %.1f Btu/lb",hx1)
printf("\n In case 2, enthalpy = %.1f Btu/lb",hx2)
printf("\n In case 3, enthalpy = %.1f Btu/lb",hx3)

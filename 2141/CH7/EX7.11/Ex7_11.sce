
clc
//initialisation of variables
h1=1279.1 //ft/lbm
s1=1.7085//ft/lbm
x=0.1210 //Btu/lbm
h2=1116.2-x*(1022.2) //Btu/lbm
W=h1-h2 //Btu/lbm
Wa=172 //Btu/lbm
//CALCULATIONS
Nth=Wa/W*100//per cent
//RESULTS
printf('the efficiency of turbine =% f per cent',Nth)

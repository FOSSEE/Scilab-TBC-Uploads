
clc
//initialisation of variables
m=125 //lbf/hr
hi=79.76 //Btu/lbm
he=103.91 //Btu/lbm
W=-3412/m //Btu/lbm
q=W+he-hi//Btu/lbm
Q=m*q //Btu/hr
hr=100.34 //Btu/lbm
hw=23.07//Btu/lbm
he_r=31.10 //Btu/lbm
he_w=43.03 //Btu/lbm
//CALCULATIONS
Mw=m*(hr-he_r)/(he_w-hw)//lbm/hr
Qe=m*(he_r-hr)//Btu/hr
mw=-Qe/(he_w-hw)//Btu/hr
//RESULTS
printf('The heat transfer from the compressor per hour=% f Btu/lbm',mw)

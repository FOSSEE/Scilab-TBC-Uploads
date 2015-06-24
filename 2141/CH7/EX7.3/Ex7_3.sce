
clc
//initialisation of variables
Pi=100//lbf/in^2
Ti=500 //F
vi=100 //ft/sec
Pe=40//lbf/in^2
hi=1279.1//Btu/lbm
si=1.7085 //Btu/lbm-R
he=1193.8//Btu/lbm
h=2*32.17*778 //lbm
//CALCULATIONS
W=hi-he+(Pi*vi)/(h)//btu/lbm
Ve=sqrt(h*W)//ft/sec
//RESULTS
printf('The exit velocity of the steam from the nozzle =% f ft/sec',Ve)

clc
//initialisation of variables
tl=279 //k
ta=294 //k
th=393 //k
re=0.14
//CALCULATIONS
cop=(tl*(th-ta))/((ta-tl)*th)
acop=cop*re
//RESULTS
printf('actual COP is %2f',acop)

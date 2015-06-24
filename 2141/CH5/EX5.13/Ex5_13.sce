
clc
//initialisation of variables
Pe=20 //lbf/in^2
he=1279.1 //Btu/lbm
Te=484.2 //F
delT=-15.8 //F
delP=-80 //lbf/in^2
//CALCULATIONS
Mu=delT/delP//-F/lbf
//RESULTS
printf('The final temperture  and specific volume of the steam and the average joule-thomson coefficient=% f -F/lbf',Mu)

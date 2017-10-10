
//To calculate the external pressure

//Example 24.5

clear;

clc;

Psat=2710;//saturated pressure in millimetre of Hg at 140 degree celsius

Pvap=760;//vapour pressure in millimetre of Hg(1 atm=760 mm of Hg)

Pext=Psat/Pvap;//external vapour pressure at 140 degree celsius

printf("external vapour pressure at 140 degree celsius=%2f atm",Pext);

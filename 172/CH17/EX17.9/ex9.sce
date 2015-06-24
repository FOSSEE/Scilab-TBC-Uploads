//ques9
//determining exit plane properties in control volume
clear
clc
//x-inlet
//y-exit
Mx=1.5;//mach number for inlet
My=0.7011;//mach number for exit
Px=272.4;//inlet pressure in kPa
Tx=248.3;//inlet temperature in K
Pox=1000;//stagnation pressure for inlet
Py=2.4583*Px;//Exit Pressure in kPa
Ty=1.320*Tx;//Exit temperature in K
Poy=0.9298*Pox;//Exit pressure in kPa

printf('Exit pressure = %.1f kPa \n',Py);
printf(' Exit temperature = %.1f K \n',Ty);
printf(' Exit stagnation pressure = %.1f kPa \n',Poy);
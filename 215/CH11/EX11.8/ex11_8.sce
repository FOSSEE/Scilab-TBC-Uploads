clc
//Example 11.8
//Calculate average power, power supplied by source and the power factor
printf("Given")
disp('Voltage source is 60 V,Load values are 2-i ohm and 1+5i ohm')
Vamp=60;Vang=0;
//Let Z be the cobined resistance
Z=2-%i+1+5*%i
[Zmag Zph]=polar(Z)
Isamp=Vamp/Zmag;
Isang=Vang-Zph;
printf("Ieff=%3.0f A rms and angle of Is is %3.2f degree\n",Isamp,(Isang*180)/%pi);
//Let Pupper be the power delievered to the upper load
Rtop=2;
Pupper=Isamp^2*Rtop
printf("Average Power delievered to the top load=%3.0f W \n",Pupper)
//Let Plower be the power delievered to the lower load
Rright=1;
Plower=Isamp^2*Rright
printf("Average Power delievered to the right load=%3.0f W \n",Plower)
//Let Papp be the apparent power
Papp=Vamp*Isamp
printf("Apparent Power =%3.0f VA \n",Papp)
//Let pf be the power factor
pf=(Pupper+Plower)/Papp
printf("power factor=%3.1f lag \n",pf)
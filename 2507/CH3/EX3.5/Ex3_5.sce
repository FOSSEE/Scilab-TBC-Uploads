clc
clear
printf("Example 3.5 | Page number 79 \n\n");
//Find the temperature attained by the coil during full load.
Rt = 80
t = 25
//Substituting Rt and t in Rt = Ro(1+0.00395t)
Ro = 80/(1+0.00395*25)
printf("Ro {Resistance at 0°C} = %.2f ohm\n",Ro)
//Full load condition
Rt = 95
//temperature at full load condition
printf("t {Temperature at full load condition} = %.2f °C",((Rt/Ro)-1)/0.00395);

//chapter9
//example9.9
//page151

P_dc=40 // W
P_ac=100 // W

efficiency=100*P_dc/P_ac

printf("rectification efficiency = %.3f percent \n \n",efficiency)
printf("remaining 60 watts are not lost. Crystal diode consumes only a \nlittle power due to its small internal resistance. \nActualy 100 W ac power is contained as 50 W in positive half \ncycle and 50 W in negative half cycle.\nThe 50 W of negative half cycle are not supplied at all. \nThe 50 W of positive half cycle are converted to 40 W \n")

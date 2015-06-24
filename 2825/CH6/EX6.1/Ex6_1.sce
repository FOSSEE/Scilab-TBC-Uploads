//Ex6_1 Pg-333
clc

Ta=25 //ambient temperature in degree celsius
tetha=10 //thermal resistance 
Pd=2 //power dessipated in transistor

Tj=Ta+tetha*Pd //collector base junction transistor temperature
printf(" \n Collector base junction transistor temperature = %.0f degree celcius \n",Tj)

disp("   tetha=10 degree celcius/watt means for every watt consumed its temperature will rise by 10 degree celcius")

printf("\n While using a transistor,we must keep in mind that it must \n not reach a condition called thermal runaway. The heat \n released at collector base junction must not exceed the rate \n at which heat can dissipated under steady state. For this,\n ")

disp("(del_Pd/del_Tj) < (1/tetha)")

disp("This is the relation for thermal stability.")

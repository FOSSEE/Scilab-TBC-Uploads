clc
disp("Example 1.4")
printf("\n")
printf("Given")
disp("Potential difference is 50V")
disp("Charge per minute is 120C/min")
V=50;x=120;
//As Electrical energy is to be calculated charge per minute is to be converted in charge per second
//Charge per second is nothing but the current
i=x/60;
P=i*V;
//Since is 1W=1J/s
printf("Rate of energy conversion is %dJ/s\n",P)


clc
clear
printf("Example 3.1 | Page number 73 \n\n");
//(a) Average human temperature in °C
//(b) Annual average temperature in peninsular India in °F

//Solution
//Part(a)
printf("Part (a)\n")
tf = 98.6 //°F //average temperature Human Body in °C
tc = (tf - 32)/1.8 //°C
printf("Average human temperature in °C = %.1f °C\n\n",tc);


//Part(b)
printf("Part (b)\n")
tc = 27 //°C //Annual average temperature in peninsular India in °C
tf = 1.8*tc+32 //Annual average temperature in peninsular India in °F
printf("Annual average temperature in peninsular India in °F = %.1f °F\n\n",tf);

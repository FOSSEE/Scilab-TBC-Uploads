clc
//Initialization of variables
w1=206
w2=55
ma1=2
ma2=3
//calculations
w3= (ma1*w1 + ma2*w2)/(ma1+ma2)
disp("From psychrometric chart,")
Tdb3=82 //F
TWb3=74.55 //F
phi3=70 //percent
//results
printf("relative humidity = %d percent",phi3)
printf("\n Dry bulb temperature = %d F",Tdb3)
printf("\n Wet bulb temperature = %.2f F",TWb3)

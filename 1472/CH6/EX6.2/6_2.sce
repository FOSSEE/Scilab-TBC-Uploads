clc
//initialization of varaibles
w1=500              //lb/min
h1=132.9            //lb/min
h2=1150             //B/lb
h3=180              //B/lb
//calculations
w2=(w1*h1-w1*h3)/(h3-h2)
//results
printf("Flow rate = %.1f lb/min",w2)

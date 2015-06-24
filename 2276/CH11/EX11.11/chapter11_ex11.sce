clc
clear

//input
//from the characteristics when Vce=15V
ic1=5;//collector current in milli amperes
ic2=2.8;//collector current in milli amperes
ib1=100;//base current in micro amperes
ib2=50;//base current in micro amperes

//calculations
b=((ic1-ic2)*1000)/(ib1-ib2);//current gain

//output
mprintf('when the collector-emitter voltage is 15V the current gain is %3.0f',b)

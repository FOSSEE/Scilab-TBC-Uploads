//Example number 1.1, Page number 1.35

clc;clear;close


//Variable declaration
D=1                    //Distance in metre
lamda=589*10**-9       //nm to metres
d=2*10**-3             //mm to metre

//Calculation
Beta=(D*lamda)/d  // in mm

//Result
printf("The fringe width beta=%0.4f mm",(Beta*10**3))

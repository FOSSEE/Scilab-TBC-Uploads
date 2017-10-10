//Chapter 4, Example 4.4, page 137
clc
//Initialisation
tec=10**17                                   //total electron content
H=200*10**3                                  //thickness of F layer
 
//Calculation
pd=tec/H                                      //plasma density at F
fc=9*sqrt(pd)
ouf=3.6*fc*0.8                               //optimum usable frequency
muf=fc*1.788                                 //maximum usable frequency

//Results
printf("Maximum usable frequency = %.1f MHz",(fc*10**-6))
printf("\nOptimum usable frequency < %.3f MHz",(ouf*10**-6))
printf("\nMaximum usable frequency (30) = %.1f MHz",(muf*10**-6))

//Chapter 5, Example 5.3

clc
//Initialisation'
di=3                       //change in current w.r.t time
l=10*10**-3                 //inductance in henry

//Calculation
v=l*di                      //voltage induced 

//Results
printf("Voltage Induced V = %d mV",v*10**3)

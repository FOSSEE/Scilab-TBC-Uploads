//Chapter 2, Example 2.2
clc
//Initialisation
t=50*10^-3                      //time period in sec, from graph
v1=10                        //position peak voltage, from graph
pi=3.14

//Calculation
f=1/t                       //frequency in hertz
w=2*pi*f                   //angular velocity

//Result
printf("Equation of Voltage signal is, \n")
printf("v = %d sin %d t",v1,round(w))

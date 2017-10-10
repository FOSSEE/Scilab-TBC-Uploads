clear
//Initialisation
c=100*10**-6               //capacitance in farad
r=100*10**3                //resistance in ohm
v=20                       //volt
t=25                       //time in seconds
e=2.71828                  //mathematical constant

//Calculation
T=c*r                     //time in seconds
v1=v*(1-e**(-t*T**-1))    //volt

//Result
printf("\n v = %.2f V",v1)


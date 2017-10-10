clear
//Initialisation
c=20*10**-6               //capacitance in farad
r=10*10**3                //resistance in ohm
v=5                       //volt
v2=10                       //volt

//Calculation
T=c*r                     //time in seconds

//Result
printf("\n v = %d - %d*e^(-t/%.1f) V",v2,v,T)

clear
//

//Initialisation
l=400*10**-3               //inductance in henry
i1=300                     //current in milliamp
r=20                       //resistance in ohm
v=15                       //volt
t1=25                       //time in seconds
e=2.71828                  //mathematical constant

//Calculation
T=l/r                     //time in seconds
i=(v*r**-1)*10**3         //current in amp
t2=((log(i/(i-i1)))/(log(e)))*0.02  //expression to find time t

//Result
printf("\n t = %.1f mSec",t2*10**3)


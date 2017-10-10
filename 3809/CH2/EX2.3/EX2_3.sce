//Chapter 2, Example 2.3
clc
//Initialisation
vp=10                        //voltage
f=10                         //frequency in hertz
pi=3.14                      //pi
phi=90                        //phase angle

//Calculation
w=2*pi*f                      //angular frequency



//Results
printf("%d sin( %d t - %d)",vp,round(w),phi)

//Chapter 3, Example 3.5

clc
//Initialisation'
v1=15                          //voltage
v2=20                          //voltage
r1=100                         //resistance in ohm
r2=200                        //resistance in ohm
r3=50                        //resistance in ohm

//Calculation
rp1=(r2*r3)/(r2+r3)                        //resistance in parallel in ohm
vp1=v1*(rp1/(r1+rp1))                          //voltage V2
rp2=(r1*r3)/(r1+r3)                        //resistance in parallel in ohm
vp2=v2*(rp2/(r2+rp2))                          //voltage V2
vp=vp1+vp2                          // total voltage

//Results
printf("Voltage, V = %.2f V",vp)

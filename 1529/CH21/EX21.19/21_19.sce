//Chapter 21, Problem 19
clc
k=400000                                //transformer rating
v1=5000                                 //primary current
v2=320                                  //secondary current
r1=0.5                                  //resistance in ohm
r2=0.001                                //resistance in ohm
lfe=2500                                //iron loss
pf=0.85                                 //power factor
i1=k/v1                                 //primary current
i2=k/v2                                 //secondary current
lcu=(i1^2*r1)+(i2^2*r2)                 //total copper loss
lt=lcu+lfe                              //total loss
pt=k*pf                                 //total output power
pi=pt+lt                                //input power
n=(1-(lt/pi))*100                       //efficiency
lc=lcu*(1/2)^2                          //total copper loss at half load
lh=lc+lfe                               //total loss at half loss
ph0=(1/2)*pt                            //output power at half load
phi=(ph0+lh)                            //input power at half load
n1=(1-(lh/phi))*100                     //efficiency
printf("(a) Efficiency on full load = %.3f percent\n\n",n)
printf("(b) Efficiency at half load = %.3f percent\n\n",n1)

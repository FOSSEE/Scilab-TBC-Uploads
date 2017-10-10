clear
//
//Initialisation
v1=5                                 //constant 5V
r=10                                //resistance in Ohm
vrms=5                              //sine wave of 5 V r.m.s
vp=5                                //5 V peak

//Calculation
p=(v1**2)*r**-1                      //Power in watts
p2=(vrms**2)*r**-1                   //Power average in watts
a=(vp*sqrt(2)**-1)**2
p3=a*r**-1                           //Power average in watts                         

//Result
printf("\n (1) P = %.1f W\n",p)

printf("\n (2) Pav = %.1f W\n",p2)

printf("\n (3) Pav = %.2f W\n",p3)


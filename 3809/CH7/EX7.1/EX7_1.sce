//Chapter 7, Example 7.1

clc
//Initialisation'
v=50                                  //voltage
i=5                                   //current
phi=30                                //angle in degree
pi=3.14                               //pi

//Calculation
s=v*i                                  //apparent power
p=cos(phi*3.14/180)                              //power factor
ap=s*p                                  //active power

//Results
printf("(a) Apparent Power, S = %d VA\n",s)
printf("(b) Power Factor = %.3f Degree\n",p)           //wrong answer in textbook
printf("(c) Active Power, P = %.1f W\n",ap)          //wrong answer in textbook

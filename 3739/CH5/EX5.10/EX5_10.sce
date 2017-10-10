//Chapter 5, Example 5.10, page 205
clc
//Initialisation
d=3000                                    //distance in Km
re=6370                                   //radius of earth in Km
phi=72                                    //angle in degree
N=5*10**11                                //electron density
pi=3.14

//Calculation
teta=3000*(2*6370)**-1                    //in radian
teta1=teta*180/pi                    //degree
dt=90-teta1-phi                           //Elevation angle
a=re/(sin(phi*pi/180))
b=sin((teta1+phi)*pi/180)
h=(a*b)-re                                 //Height in Km
fc=9*sqrt(N)                          //frequency in MHz
MUF=fc*(cos(phi*pi/180))**-1      //Maximum working frequency

//Results
printf("(1) Elevation angle = %.1f degree",dt)
printf("\n(2) Height h = %.1f km",h)
printf("\n(3) MUF = %.1f MHz",(MUF*10**-6))

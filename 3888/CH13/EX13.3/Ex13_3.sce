//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 13.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


A=120;                                          //Normal copper area in mm^2
con_size=(30+7)/6.30;                           //Conductor size in mm
w=0.4;                                          //Conductor weight in kg/m
Ts=1250;                                        //Tensile strength in kg
Sf=5;                                           //Safety factor
L=200;                                          //Span length in m
t=0.5;                                          //Thickness of ice in cm 
p=10;                                           //Wind pressure in kg/m^2
D=(2*4-1)*6.30*10^(-1);                         //Total diameter of conductor in cm
T=Ts/Sf;                                        //Working stress in kg
d=w*L^(2)/(8*T);                                //Sag in still air in m
wi=%pi*((D+t)*10^(-2)*t*10^(-2))*915;           //Weight of ice in kg/m
W=w+wi;                                         //Total weight of ice in kg/m
d1=W*L^(2)/(8*T);                                //Sag in m
Ww=(D+2*t)*10^(-2)*p;                           //Wind loading in kg/m
We=sqrt(Ww^(2)+(w+wi)^(2))                      //Effective loading in kg/m
d2=We*L^(2)/(8*T);                              //Total Sag in m
angle=atand(Ww/(w+wi));                         //Sag angle in degree

printf("\nSag in still air %.f m",d);
printf("\nSag,if the conductor is  covered with ice of 0.5-cm thickness is % .2f m",d1);
printf("\nSag,if the conductor is  covered with ice of 0.5-cm thickness and a wind pressure of 10 kg/m^(2) is acting on the projected area is %.2f m",d2);
printf("\nSag angle is %.2f degree",angle);














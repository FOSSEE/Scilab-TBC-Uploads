clear
//
d1=500.0         //diameter of a shaft
d2=100.0        //diameter of a shaft
D=3000.0                   //distance between shafts in mm
T=1000.0              //Maximum permissible tension in the belt
U=0.25           //coefficient of friction between the belt and the pulley
R=220.0              //revlution per minute of larger shaft
O1=3.14+2*asin((d1-d2)/(2*D))
O2=3.14-2*asin((d1-d2)/(2*D))
//Length of belt = Arc length DC + Arc length FE + 2BG
L=(d1/2*O1+d2/2*O2)+2*D*cos(asin((d1-d2)/(2*D)))
printf("\n Length of belt is  %0.3f  mm",L)
T1=T/(2.71**(U*O2))
Velocity_of_the_belt =d1/2*(R*2*3.14/60.0)
Power_transmitted=(T-T1)*Velocity_of_the_belt
printf("\n Power Transmitted %0.3f  Watt",Power_transmitted)

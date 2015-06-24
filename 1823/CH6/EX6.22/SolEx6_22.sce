//Find (a) the final-stage voltage gain Av2  vo=vo1; (b) the final-stage input impedance Zin2;
//(c) the initial-stage voltage gain Av1  vo1=vin; (d) the amplifier input impedance Zin1; and
//(e) the amplifier voltage gain Av  vo=vi.
//Example 6.22 page no 189
clear
clc
hfe=40
Rc2=20*10^3     //Ω
Rc1=10^4        //Ω
hie=1500
hoe=30*10^-6
Av2=-((hfe*Rc2)/(hie*(1+hoe*Rc2)))      //final-stage voltage gain
printf("\n The value of Av2=%0.3f " ,Av2)
Rb2=5*10^3      //Ω
hie=1500
hfe=40
Zin2=(((Rb2*hie)/(Rb2+hie)))/1000           //final-stage input impedance Zin2
printf("\n The value of Zin2=%0.3f Kohm " ,Zin2)
Zin2=Zin2*1000
Av1=-((hfe*Zin2*Rc1)/(hie*(Rc1+Zin2+hoe*Zin2*Rc1)))     //initial-stage voltage gain
printf("\n The value of Av1=%0.3f " ,Av1)

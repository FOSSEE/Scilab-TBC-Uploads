//example=20.9
//page no-613
//given
//capacitance of paper capacitance
C=0.02*10^-6  //F
//thickness of capacitor
d=1*10^-3  //m
//relative permitivity
Er=2.6
E0=8.85*10^-12
//dielectric strength
k=1.8*10^7   //V/m
//area of capacitor is given by
A=C*d/(Er*E0)*10^4  //cm^2
//breakdown volatage
Vbreakdown=k*d  //V
printf ("the area of capacitor is %f am^2 \n and breakdown volatage is %f V",A,Vbreakdown)

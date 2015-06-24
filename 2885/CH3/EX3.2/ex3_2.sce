//detrenmine dc resistance of silicon diode
clear;
clc;
//soltion
//given

//At Id = 2 mA
Id=2*10^-3;//Ampere//diode current
Vd=0.5;//V//voltage(from given curve)
Rf=(Vd/Id);
printf("The dc resistance is %d Ω\n",Rf);

//At Id = 20 mA
Id=20*10^-3;//Ampere//diode current
Vd=0.75;//V//voltage(from given curve)
Rf=(Vd/Id);
printf("The dc resistance is %.1f Ω\n",Rf);

//At Vd = - 10 V 
Id=-2*10^-6;//Ampere//diode current(from given curve)
Vd=-10;//V//voltage
Rf=(Vd/Id);
printf("The dc resistance is %d MΩ\n",Rf/10^6);

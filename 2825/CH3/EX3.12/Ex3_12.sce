//Ex3_12 Pg-188
clc

disp("Refer to the figure 3.51")
Id1=2*10^(-3) //diode current in I
Vd1=0.5 //diode voltage in V
Rf1=Vd1/Id1 //Dc resistance
disp("At Id=2mA and Vd=0.5V")
printf("\n Rf = %.0f ohm \n\n",Rf1)

Id2=20*10^(-3) //diode current in I
Vd2=0.75 //diode voltage in V
Rf2=Vd2/Id2 //Dc resistance
disp("At Id=20mA and Vd=0.75V")
printf("\n Rf = %.1f ohm \n\n",Rf2)

Id3=2*10^(-6) //diode current in I
Vd3=10 //diode voltage in V
Rf3=Vd3/Id3 //Dc resistance
disp("At Id=2*10^(-6)A and Vd=10V")
printf("\n Rf = %.0f Mohm \n\n",Rf3*10^-6)

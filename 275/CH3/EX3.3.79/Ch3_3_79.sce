clc
disp("Example 3.79")
printf("\n")
disp("Calculate the suitable resistor values for Voltage divider bias circuit")
printf("Given\n")
printf("1 Resistance are in ohms \n2 Current are in ampere \n3 voltage sources are in volt")
//given
Vcc=20
Vce=8
hFE=80
Vbe=0.7
Rc=6*10^3
//select Ve
Ve=5
//find collector resistor
Ic=(Vcc-Vce-Ve)/Rc
//find I2
I2=Ic/10
//emitter resistance
Re=Ve/Ic
//base voltage
Vb=Vbe+Ve
//resistance R1
R1=(Vcc-Vb)/I2
//resistance R2
R2=Vb/I2
printf("Collector resistance %f ohm \n",Rc)
printf("emitter resistance %f ohm \n",Re)
printf("base voltage %f volt \n",Vb)
printf("voltage divider resistance R1 & R2 %f ohm\n %f ohm\n",R1,R2)



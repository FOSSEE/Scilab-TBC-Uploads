clc
disp("Example 3.76")
printf("\n")
disp("Design a Voltage divider bias circuit")
printf("Given\n")
//given
Vce=5
Ve=Vce
Ic=5*10^-3
Vcc=15
hFE=100
Vbe=0.7
//emitter resistance
Re=Ve/Ic
//collector resistance
Rc=(Vcc-Vce-Ve)/Ic
//current through resistor R2
I2=Ic/10
//base voltage
Vb=Vbe+Ve
//resistance 1
R1=(Vcc-Vb)/I2
//resistance 2
R2=Vb/I2
printf("Collector resistance %f ohm \n",Rc)
printf("emitter resistance %f ohm \n",Re)
printf("base voltage %f volt \n",Vb)
printf("voltage divider resistance R1 & R2 %f ohm\n %f ohm\n",R1,R2)

clc
disp("Example 4.18")
printf("\n")
disp("Calculate input voltage that turns SCR ON, & find supply voltage that turns SCR OFF if holding current is 10mA")
printf("Given\n")
printf("Resistance are in ohms \nCurrent are in Ampere \n Voltage sources are in volt\n")
//gate trigger voltage
Vgt=0.75
//trigger current
Igt=5*10^-3
//gate resistance
Rg=1000
//load resistance
RL=100
//diode forward voltage
Vf=0.7
//holding current
Ih=10*10^-3
//minimum input voltage to trigger the SCR is
Vin=Vgt+(Igt*Rg)
//The supply voltage that turns OFF the SCR is
VCC=Vf+(Ih*RL)
printf("minimum input voltage to trigger the SCR is %f volt \n",Vin)
printf("The supply voltage that turns OFF the SCR is %f volt \n",VCC)

clc
disp("Example 5.16")
printf("\n")
disp("For CE amplifier shown in fig 5.5 find R1,R2,Re & Rc")
printf("Given\n")
Vcc=18
//load resistance
RL=56*10^3
//since Rc<<RL
Rc=RL/10
//select Ve & Vce
Ve=5
Vce=3
Vrc=Vcc-Vce-Ve  //from circuit
Ic=Vrc/Rc
//find Re
Re=Ve/Ic
R2=10*Re
//Vbe for si transistor
Vbe=0.7
Vb=Vbe+Ve
I2=Vb/R2
R1=(Vcc-Vb)/I2
printf("The resistance values are\nR1=%f ohm\nR2=%f ohm\nRe=%f ohm\nRc=%f ohm\n",R1,R2,Re,Rc)

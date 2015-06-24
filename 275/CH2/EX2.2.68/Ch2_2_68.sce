clc
disp("Example 2.68")
printf("\n")
disp("Calculate the line regulation, output resistance, load regulation & ripple rejection ratio")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//input voltage
Vi=16
//output voltage
Vo=6
//load current
ILmax=60*10^-3
//dynamic impedence
Zz=7
//series resistance
R=150
//Source effect
delVi=(10*16)/100
RL=Vo/ILmax
//Zz||RL
Rp=(Zz*RL)/(Zz+RL)
delVo=(delVi*Rp)/(R+Rp)
//Line regulation
LR=(delVo*100)/Vo
//load effect
delIL=ILmax
Ro=(Zz*R)/(Zz+R)
delVo1=delIL*Ro
//output resistance
Rout=Ro
//Ripple rejection ratio
VrobyVri=Rp/(R+Rp)
printf("line regulation is %f \n",LR)
printf("output resistance is %d ohm\n",Rout)
printf("Ripple rejection ratio %f \n",VrobyVri)
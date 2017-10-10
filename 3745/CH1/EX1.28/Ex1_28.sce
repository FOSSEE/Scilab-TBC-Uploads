// Ex 28 Page 370

clc;clear;close;
// Given
Rs=1000;//ohm
Rc1=2*1000;//ohm
Re2=2*1000;//ohm
//CE configuration
hie=1100;//ohm
hre=2.5*10**-4;
hfe=50;
hoe=25*10**-6;//s
//CC configuration
hic=1.1;//kohm
hrc=1;
hfc=-51;
hoc=25*10**-6;//s

printf("for 2nd stage(CC stage)")
AI2=-hfc/(1+hoe*Re2);//current gain
Ri2=hic+hrc*AI2*Re2;//kohm
Av2=AI2*Re2/Ri2;//Voltage Gain
printf("\n current gain = %0.2f",AI2)
printf("\n Input impedence = %0.2f kohm",Ri2/1000)
printf("\n Voltage gain = %0.2f",Av2)

printf("\n\n for 1st stage(CE stage)")
RL1=Rc1*Ri2/(Rc1+Ri2);//kohm
AI1=-hfe/(1+hoe*RL1);//current gain
printf("\n current gain = %.2f",AI1)
Ri1=hie+hre*AI1*RL1;//kohm
printf("\n Input impedence = %0.2f kohm",Ri1/1000)
Av1=AI1*RL1/Ri1;//Voltage gain
printf("\n Voltage gain = %0.2f",Av1)
Ro1=1/(hoe-hfe*hre/(hie+100));//ohm
printf("\n Output impedence = %.2f kohm",Ro1/1000)
Ro1dash=Ro1*Rc1/(Ro1+Rc1);///ohm
printf("\n Output impedence taking Rc1 into account = %.2f kohm",Ro1dash/1000)

printf("\n\n for overall amplifier")
Ro=1/(hoc*100-hfc*hrc/(hic+Ro1dash));//ohm
printf("\n Output impedence = %.2f ohm",Ro)
Rodash=Ro*Re2*1000/(Ro1+Re2*1000);///ohm
printf("\n Output impedence taking Re2 into account = %.2f ohm",Rodash)
AI=AI1*AI2*Rc1/(Ri2+Rc1);// current gain
printf("\n current gain = %.2f",AI)
Av=Av1*Av2;//voltage gain
printf("\n Voltage gain = %.2f",Av)
//answer is wrong for overall amplifier in the book.

clc
//initialisation of variables
R100=5.93//ohms
Ro=5.0//ohms
P100=1.366//metres
Po=1//metres
Pt=1.3111//metres
Rt=5.795//ohms
//calculations
tp=(Rt-Ro)*100/(R100-Ro)
t=(Pt-Po)*100/(P100-Po)
//results
printf(' thermal on platinum scale= % 2f C',tp)
printf(' thermal on gas scale= % 1f C',t)

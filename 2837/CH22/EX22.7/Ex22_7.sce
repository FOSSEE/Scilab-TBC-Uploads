clc
clear
//Initalization of variables
loss=2*80000 //Btu/lb
tb=72 //F
to=12 //F
to2=42 //F
tf=104+460 //R
//calculations
ratio=tf/(tf-460)
power=loss/(2544*ratio)
//results
printf("Power = %.1f hp",power)

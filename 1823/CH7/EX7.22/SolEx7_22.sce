//determine the voltage gain. (c) Calculate the voltage gain using small-signalanalysis
//Example 7.22 page no 220
clear
clc
Vpp=300                     //V
Vgq=4                       //V
Rl=11.6*10^3                //Ω
Vpm=34                       //V
Vgm=2
Av=-(2*Vpm/2*Vgm)
dvp=202-168
dip=(15-8)*10^-3
rp=dvp/dip/1000             //kΩ
dip=(15.5-6.5)*10^-3
dvg=-3-(-5)
gm=dip/dvg*1000             //ms
m=21.87
Rl=11.6                     //Ω
Av=-(m*Rl*10^3)/((Rl+rp)*10^3)      //Voltage gain
printf("\n The value of rp=%0.3f kOhm",rp)
printf("\n The value of gm=%0.3f mS",gm)
printf("\n The value of Av=%0.3f ",Av)

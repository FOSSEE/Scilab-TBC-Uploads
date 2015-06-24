clc
clear
//Initalization of variables
pv=0.3631 //psia
pa=14.7 //psia
cp=0.24
tw=70 //F
td=80 //F
hv1=1096.6 //Btu/lb
hfb=38.06 //Btu/lb
//calculations
sh=0.622*pv/(pa-pv)
sh1=(cp*tw -cp*td + sh*1054.3)/(hv1-hfb)
//results
printf("Specific humidity = %.5f lb/lb",sh1)

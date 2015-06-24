clc
clear
//Initialization of variables
dg=0.5 //in
dw=12 //in
rhog=0.022 //slug/ft^3
rhow=1.94 //slug/ft^3
muw=2.34e-5 //lb-sec/ft^2
mug=3.50e-7 //lb-sec/ft^2
Qg=0.15 //ft^3/s
dpg=100 //lb/ft^2
//calculations
Vr=dg/dw *rhog/rhow *muw/mug
Qr=Vr*dw^2 /dg^2
Qw=Qr*Qg
dpr=rhow/rhog *(Vr)^2
dpw=dpr*dpg
//results
printf("Flow rate of water = %.2f ft^3/s",Qw)
printf("\n Pressure drop = %.1f lb/ft^2",dpw)

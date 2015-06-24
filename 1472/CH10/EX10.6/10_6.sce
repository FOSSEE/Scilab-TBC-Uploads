clc
//initialization of varaibles
s=1.7050 //B/lb R
//calculations
disp("From table 2,")
sx=1.7050
sg=1.7549
sfg=1.4415
dx=(sg-sx)/sfg
hg=1150.8
hfg=969.7
hx=hg-dx*hfg
vg=26.29
vfg=26.27
vx=vg-dx*vfg
//results
printf("Specific volume = %.3f cu ft/lb",vx)
printf("\n Enthalpy = %.1f B/lb",hx)

// Example 2.6, page no-52
clear
clc

Iref=0.25*10^-3
Io=0.2*10^-3
kn=20*10^-6
Vth=1
Vgs2=1.752
lamb=0
Vdd=5
Vss=0

wbyltwo=Io/(kn*(Vgs2-Vth)^2)
printf("W/L2= %.1f", wbyltwo)

Vdssat=Vgs2-Vth
printf("\nVds(sat)= %.3f V", Vdssat)

Vgs1=Vgs2
wbylone=Iref/(kn*(Vgs2-Vth)^2)
printf("\nW/L1= %.1f", wbylone)

Vgs3=Vdd-Vss-Vgs1
printf("\nVgs3= %.3f V", Vgs3)

wbylthr=Iref/(kn*(Vgs3-Vth)^2)
printf("\nW/L3= %.2f", wbylthr)


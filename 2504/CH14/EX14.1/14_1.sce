clc
//initialisation of variables
clear
a= 60.5
Q= 0.2 //ft^3/sec
d= 3 //in
u= 0.0325
g= 32.2 //ft/sec^2
T= [50.0 60.0 70.0 80.0 90.0 100.0]
Ep= [294.5 188.6 113.2 60.4 37.7 24.5]
Eh= [0 69.9 139.8 209.7 279.5 349.4]
Et= [295 258 253 270 317 374]
//CALCULATIONS
re= a*4*Q/(%pi*(d/12)*u*g)
//RESULTS
printf ('Reynolds Number = %.1f ',re)
disp(T)
disp(Ep)
disp(Eh)
disp(Et)
plot(T,Ep)
plot(T,Eh)
plot(T,Et)

xtitle("","T (F)", "Eh,Ep,Eh&Ep (kW)")



clear all; clc;

disp("From Um=rm*omega")
disp("We have rm=30*Um/(N*pi)")
rm=30*850/(8000*%pi)
printf(" Thus rm= %0.2f ft=12.1 in",rm)

disp("rm=(rt^2+rh^2/2)^0.5 or rt^2+rh^2=293.8")
disp("Combined with b=rt-rh=4 in,we have rt^2-4rt-138.9=0,thus rt=13.95 in")

disp("and rh=9.95 in")

disp("To find the number of stages required the exhaust air temperature can be estimated as T0e=T0i*(p0e/p0i)^((k-1)/k)")
T0e=1400*(14.7/60)^0.2857
printf(" Thus T0e= %0.1f R",T0e)

disp("The maximum energy available per unit mass of air is delta_Hs=Cp*(T0i-T0e)")
delta_Hs=0.24*(1400-936.7)
printf(" delta_Hs= %0.1f Btu/lbm",delta_Hs)

disp("The maximum energy transfer per stage with an impulse turbine is deltaEi=2*Um^2")
delta_Ei=2*(850^2)/(32.2*778)
printf(" delta_Ei= %0.2f Btu/lbm",delta_Ei)

disp("Hence the required number of stages is ETAsi=delta_Hs/delta_Ei")
ETAsi=111.2/57.68
printf(" ETAsi= %0.2f which is approximately equal to 2",ETAsi)

disp("With the reaction turbine stages,it will be delta_Er=Um^2")
delta_Er=850^2/(32.2*778)
printf(" delta_Er= %0.2f Btu/lbm",delta_Er)
disp("And ETAse=3.85 is approximatly equal to 4")


















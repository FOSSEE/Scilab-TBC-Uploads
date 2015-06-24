clc
clear
//Initialization of variables
hv=11780 //Btu/lb
steam=55000 //lb/hr
coal=6480 //lb
x1=0.66
x2=0.044
x3=0.079
x4=0.015
x5=0.11
z1=14.5
z2=0.2
z3=4.4
z4=80.9
xash=0.076
xmois=0.115
yc=0.21
refuse=622 //lb/hr
cp=0.24
tg=400 //F
ta=70 //F
Qco=10160 //Btu/lb
Qc=14600 //Btu/lb
//calculations
disp("From steam tables,")
hf=269.6 //Btu/lbm
hfg=1.5 //Btu/lbm
h1=hf+hfg
h2=1196.5
Qb=h2-h1
h3=1407.7 //Btu/lbm
Qs=h3-h2
h4=h3-h1
out=steam*h4/1000
eff=steam*h4/(coal*hv)
//Energy balance
Ci=coal*x1
Cr=refuse*yc
Cb=(Ci-Cr)/coal
lbt= z1*44+z2*28+z3*32+z4*28
lbC=z1*12+z2*12
dry=lbt/lbC *Cb
loss1=dry*cp*(tg-ta)
loss2=z2*12/(lbC) *Cb*Qco
loss3=Cr*Qc/coal
loss4=xmois*(1089+0.46*tg-ta)
loss5=x2*9*(1089+0.46*tg-ta)
loss6=steam*h4/coal
//results
printf("Heat absorbed in the boiler = %.2f Btu per lb of steam generated",Qb)
printf("\n Heat absorbed in the superheater = %.2f Btu/lb of steam",Qs)
printf("\n Heat absorbed in steam generating = %.2f Btu/lb of steam generated",h4)
printf("\n Output of steam generating unit = %d kB",out)
printf("\n Efficiency of steam generating unit = %.1f percent",eff*100)
printf("\n Carbon burned to CO and CO2 = %.2f lb of C per lb of fuel",Cb)
printf("\n Dry products of combustion = %.2f lb per lb of fuel",dry)
printf("\n Loss due to sensible heat in dry gaseous products of combustion = %d Btu/lb of fuel",loss1)
printf("\n Loss due to CO in dry products of combustion = %.1f Btu/lb of fuel",loss2)
printf("\n Loss due to C in refuse = %.1f Btu/lb of fuel",loss3)
printf("\n Loss due to evaporating moisture in fuel = %.1f Btu/lb of fuel",loss4)
printf("\n Loss due to water vapor formed from H = %.1f Btu/lb of fuel",loss5)
printf("\n Energy absorbed in generating steam = %d Btu/lb of fuel",loss6)
disp("The answers are a bit different due to rounding off error in the textbook")

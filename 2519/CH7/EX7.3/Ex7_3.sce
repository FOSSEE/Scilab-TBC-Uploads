clc
clear
//Initialization of variables
tc=32 //F
th=80 //F
mw=5 //lbm
mi=1 //lbm
P=14.7 //psia
cp=1
//calculations
t= (-144*mi+tc*mi+th*mw)/(mw+mi)
ds1=144/(tc+460)
ds2=cp*log((460+t)/(460+tc))
dsice=ds1+ds2
dswater=mw*cp*log((t+460)/(460+th))
ds=dsice+dswater
//results
printf("Change in entropy of the process = %.4f Btu/R",ds)
disp("The answer is a bit different due to rounding off error in textbook")

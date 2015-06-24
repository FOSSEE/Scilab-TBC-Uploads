clc
//initialisation of variables
T2w= 100 //F
T1w= 75 //F
cw= 1 //Btu/lb F
T2i= 100 //F
T1i= 500 //F
ci= 0.12 //Btu/lb F
mi= 1
//CALCULATIONS
Mw= -mi*ci*(T2i-T1i)/(cw*(T2w-T1w))
//RESULTS
printf ('Pounds of water needed per pound of iron= %.2f lb water/lb iron',Mw)

clc
//Initialization of variables
Ta=500 //R
Tr=540 //R
//calculations
cop=Ta/(Tr-Ta)
hp=4.71/cop
disp("From steam tables,")
ha=48.02
hb=46.6
hc=824.1
hd=886.9
Wc=-(hd-hc)
We=-(hb-ha)
//results
printf("Coefficient of performance = %.1f ",cop)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp)
printf("\n Work of compression = %.1f Btu/lbm",Wc)
printf("\n Work of expansion = %.2f Btu/lbm",We)

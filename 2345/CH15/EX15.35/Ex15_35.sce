//Finding efficiency
//Example 15.35(pg. 416)
clc
clear
m=2//quantity of aluminium to be melted in kg
t1=15,t2=660//temp in degreeC
S=0.212//specific heat of aluminium
L=78.8//latent heat of aluminium in kcal/kg
H=(m*S*(t2-t1))+(m*L)//total heat required to melt Al in kcal
i=5//input to furnace in kW
E=i*(1000*10*60)//Energy input to furnace in watt-sec
E1=E/4180//energy input in kcal
e=H*100/E1//efficiency of furnace
printf('Thus the efficiency of furnace is %2.3f percent',e)

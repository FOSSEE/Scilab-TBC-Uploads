clc
//Initialization of variables
y=0.195
bc=34.07
bb=-0.65
bi=290.85
//calculations
eps=abs((1-y)*(bc-bb)/(y*(bc-bi)))
I=(1-y)*(bc-bb)+ (y*(bc-bi))
//results
printf("Effectiveness = %.1f percent",eps*100)
printf("\n loss of available energy = %.1f btu/lbm",I)

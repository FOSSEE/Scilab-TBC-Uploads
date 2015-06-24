clc
clear
//Initalization of variables
h2d=93.410 //Btu/lb
h1=80.740 //Btu/lb
x=0.75
PD=160
vol=0.82
v1=1.7213
w2=80.156
w1=27.3
//calculations
twork=h2d-h1
swork=twork/x
flow=PD*vol/v1
ref=flow*(w2-w1)/200
shp= flow*swork/42.4
cop=(w2-w1)/swork
//results
printf("Refrigeration = %.1f tons",ref)
printf("\n Shaft hp= %.1f hp",shp)
printf("\n Coefficient of performance = %.2f ",cop)

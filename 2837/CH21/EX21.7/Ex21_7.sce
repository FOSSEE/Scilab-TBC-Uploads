clc
clear
//Initalization of variables
reh=1.047
dh6=292.8
x2=0.7
flow=98000 //lb/hr
loss=200 //hp
//calculations
intwork=reh*dh6*x2
inthp=intwork*flow/2544
sout=inthp-loss
swork=sout*2544/flow
seff=swork/290.1 *100
//results
printf("Shaft output = %d hp",sout)
printf("\n Shaft engine efficiency = %.1f percent",seff)

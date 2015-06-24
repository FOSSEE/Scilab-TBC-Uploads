clc
clear

//input
kva=20000;//kVA rating of the transformer in VA 
vp=1100;//primary voltage in volts
vs=240;//secondary voltage in volts
pi=500;//iron losses in watts
pc=600;//full load copper losses in watts
pf=0.8;//lagging power factor

//calculations
out=kva*pf;//full load output in watts
fll=pi+pc;//full load losses in watts
n=out/(out+fll);//efficiency in perunits
hfl=kva/2;//unity power factor
cp=pc*(1/(2*2));//copper loss in watts
n1=(hfl/1000)/((hfl/1000)+0.5+(cp/1000));//efficiency in per units
kvat=(kva*((pi/pc)^0.5))/1000;// total kVA 

//output
mprintf('the efficiencies on full load,at 0.8 lag and 0.5*full load,at unity power factor are %3.3f p.u. and %3.2f p.u. respectively.\n the loading for maximum efficiency is %3.2f kVA',n,n1,kvat)

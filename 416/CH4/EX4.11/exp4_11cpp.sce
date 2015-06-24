clc
clear
disp("example 4 11")
v=400//line voltage
i=50 //line current
pf=0.8 //at power factor
pf2=0.95 // overall power factor
sm=25 //hp of synchronous motor 
e=0.9//efficiency
kwri=v*i*pf*sqrt(3)/1000
kvari=v*i*sqrt(3)/1000
karri=(-kwri^2+kvari^2)^0.5
kwsm=sm*735.5/(e*1000)
tkw=kwri+kwsm
printf(" kw rating of installation %.1fkW \n kVA rating of installation %.2fkva \n kVAR rating %.2fkvar \n kw input to synchrounous motor %.2fkw \n total kw=%.2f\n",kwri,kvari,karri,kwsm,tkw)
pd=acosd(pf2)
tkr=tkw*tand(pd)
krsm=tkr-karri
kasm=(kwsm^2+krsm^2)^0.5
pfsm=kwsm/kasm
if krsm<0 then
    ch=char('capacitor')
    ich=char('leading')
else
    ch=char('inductive')
    ich=char('lagging')
end
printf(" overall power factor angle %.2fkw \n total kvar %.2fkvar \n kvar of synchrounous motor %.2fkvar %c \n kva of synchrounous motor %.2fkva \n power factor of synchrounous motor %.2f %c",pd,tkr,krsm,ch,kasm,pfsm,ich)

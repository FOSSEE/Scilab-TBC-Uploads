clc
clear
disp("example 4 21")
md=800 //maximum demand
pf=0.707 //power factor
c=80 //cost
p=200 //power
e=0.99//efficiency
pff=0.8 //fulload pf
ikva=md/pf
iafc=(round(ikva*100)*(c)/100)
rsm=ikva*pf
act=p*(0.7355)/e
at=-act*sind(acosd(pff))
tkw=rsm+act
tkvr=rsm+at
tkva=(tkw^2+tkvr^2)^0.5
ikvad=tkva-ikva
infc=ikvad*c
printf(" initial kVA %.2fkVA \n initial annual fixed charges Rs%.1f \n after installation of synchronous motor reactive power of induction motor %dkVars\n active power input of synchrounous motor %.2fkW\n reactive power input to synchrounous motor %.2fKVAR \n total kW %.2fKW \n total kVars %.2fkVARS \n total kVA %.2fkVA \n increase in KVA demand %.2fkVA\n increase in annual fixed charges Rs%.1f ",ikva,iafc,rsm,act,at,tkw,tkvr,tkva,ikvad,infc)

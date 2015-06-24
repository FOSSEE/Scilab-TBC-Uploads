clc
//initialisation
et=3.92//millivolts
e100=0.65//millivolts
e0=0//millivolts
e=2//volts
lp=1000//centimetres
ld=50.2//centimetres
rp=0.01//ohm per centimetre
rs=2500//ohms
j=5*10^-6
//CALCULATIONS
i=e/(rs+(lp*rp))
p=i*rp*lp/100
p1=p*ld
T=p1/j
t=(100*(et-e0))/(e100-e0)
//results
printf(' temperature= % 1f C',t)
printf(' \n temperature= % 1f C',T)

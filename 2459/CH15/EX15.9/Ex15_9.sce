//chapter15
//example15.9
//page331

Vcc=17.5 // V
ic_max=35d-3 // ampere
ic_min=1d-3 // ampere
IC=18 // ampere
gain=100
vce_max=30 // V
vce_min=5 // V
Rl=81.6 // ohm

IC=ic_min+((ic_max-ic_min)/2)
IB=IC/gain
VCE=vce_min+((vce_max-vce_min)/2)

Pdc=Vcc*IC
Vce=(vce_max-vce_min)/(2*2^0.5)
Ic=(ic_max-ic_min)/(2*2^0.5)
Pac=Vce*Ic

eta=(Pac/Pdc)*100

slope=(ic_max-ic_min)/(vce_min-vce_max)
Rl_dash=-1/slope
n=(Rl_dash/Rl)^0.5

printf("zero signal collector current = %.3f mA \n",IC*1000)
printf("zero signal base current = %.3f mA \n",IB*1000)
printf("dc power = %.3f mW and ac power = %.3f mW \n",Pdc*1000,Pac*1000)
printf("collector efficiency = %.3f percent \n",eta)
printf("transformer turn ratio = %.1f \n",n)

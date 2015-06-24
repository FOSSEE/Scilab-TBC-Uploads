//chapter15
//example15.7
//page329

Vcc=5 // V
Ic=50d-3 // ampere

Pac_max=Vcc*Ic/2
Pdc=Vcc*Ic
Pdis=Pac_max*2
eta=(Pac_max/Pdc)*100

printf("maximum power output= %.3f mW \n",Pac_max*1000)
printf("power dissipation = %.3f mW \n",Pdis*1000)
printf("maximum collector efficiency = %.3f percent \n",eta)

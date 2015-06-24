//example 10
//analysis of refrigerator
clear
clc
hf4=167.4 //in kJ/kg
hfg4=215.6 //in kJ/kg
h3=241.8 //specific heat of enthalpy of R-134a entering expansion valve
h4=h3 //specific heat of enthalpy of R-134a leaving expansion valve
h1=387.2 //in kJ/kg
h2=435.1 //in kJ/kg
x4=(h3-hf4)/hfg4 //quality of R-134a at evaporator inlet
m=0.1 //mass flow rate in kg/s
Qevap=m*(h1-h4) //rate of heat transfer to the evaporator
Wcomp=-5 //power input to compressor in kW
Qcomp=m*(h2-h1)+Wcomp //rate of heat transfer from compressor
printf("\n hence, the quality at the evaporator inlet is x4=%.3f. \n",x4')
printf("\n hence, the rate of heat transfer to the evaporator is Qevap=%.2f kW. \n",Qevap')
printf("\n hence, rate of heat transfer from the compressor is Qcomp=%.2f kW. \n",Qcomp')
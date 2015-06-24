//example 9
//heat tranfer in simple steam power plant
clear
clc
h1=3023.5 //specific heat of enthalpy of steam leaving boiler in kJ/kg
h2=3002.5 //specific heat of enthalpy of steam entering turbine in kJ/kg
x=0.9 //quality of steam entering condenser
hf=226 //in kJ/kg
hfg=2373.1 //in kJ/kg
h3=hf+x*hfg //specific heat of enthalpy of steam entering condenser in kJ/kg
h4=188.5 //specific heat of enthalpy of steam entering pump in kJ/kg
q12=h2-h1 //heat transfer in line between boiler and turbine in kJ/kg
w23=h2-h3 //turbine work in kJ/kg
q34=h4-h3 //heat transfer in condenser
w45=-4 //pump work in kJ/kg
h5=h4-w45 //in kJ/kg
q51=h1-h5 //heat transfer in boiler in kJ/kg
printf("\n hence, heat transfer in line between boiler and turbine is q12=%.1f kJ/kg. \n",q12')
printf("\n hence, turbine work is w23=%.1f kJ/kg. \n",w23')
printf("\n hence, heat transfer in condenser is q34=%.1f kJ/kg. \n",q34')
printf("\n hence, heat transfer in boiler is q51=%.0f kJ/kg. \n",q51')
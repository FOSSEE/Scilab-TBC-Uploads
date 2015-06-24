//example 5
//quality of ammonia leaving expansion valve
clear
clc
hi=346.8 //specific heat enthalpy for ammonia at initial state in kJ/kg
he=hi //specific heat enthalpy for ammonia at final state will be equal that at initial state because it is a throttling process
hf=134.4 //at final state in kJ/kg
hfg=1296.4//at final state in kJ/kg
xe=(he-hf)/hfg //quality at final state
printf("\n hence,quality of the ammonia leaving the expansion valve is xe=%.4f. \n",xe')
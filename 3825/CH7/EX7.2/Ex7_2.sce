clc
T2=300 
T1=1400
Eta=1-(T2/T1)
mprintf("Eta=%f\n",Eta)//ans vary due to roundoff error
Q1=65 //in kJ/min
W=60 //in kJ/min
mprintf("efficiency claimed by inventor=%f",W/Q1)//ans vary due to roundoff error

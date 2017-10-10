clc
hf=762.61 //in kJ/kg
hg=2776.2 //in kJ/kg
he=2696.12 //in kJ/kg
hi=he//isenthalpic process
X=(hi-hf)/(hg-hf)
mprintf("X=%f",X)//ans vary due to roundoff error

//EX10_1 PG-10.7
clc
disp("Refer to the figure-10.5 shown")
V1=300e-6;
V2=240e-6;
Vd=V1-V2//differential mode voltage 
Vc=(V1+V2)/2;//common mode voltage 
Ad=5000;//differential gain
printf("\n when CMRR=100")
CMRR=100;//common mode rejection ratio
Ac=Ad/CMRR;
printf("\n common mode gain Ac=%.f \n",Ac)
Vo=Ad*Vd+Ac*Vc;//output voltage
printf(" output voltage is Vo=%.1f mV \n",Vo*1e3)
printf("\n when CMRR=100000")
CMRR=1e5;//common mode rejection ratio
Ac=Ad/CMRR;
printf("\n common mode gain Ac=%.2f \n",Ac)
Vo=Ad*Vd+Ac*Vc;//output voltage
printf(" output voltage is Vo=%.4f mV \n",Vo*1e3)

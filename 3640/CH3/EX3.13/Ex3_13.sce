clc
SB=300 //rating in kVA at full load
S=150 //kVA at half load
Phe=2.7 //core loss in kW
Phepu=Phe/SB //ans may vary due to roundoff error
mprintf("Phepu=%f\n",Phepu)
Reqpu=0.0140 //per unit resistance in ohms=per unit copper loss at full load in watts
pf=0.9 //power factor at full load
//efficiency at full load
mprintf("ηfl=%f\n",pf/(pf+Phepu+Reqpu))//ans may vary due to roundoff error
//efficiency at half load
a=S/SB //ratio of kVA at half and full load
mprintf("ηfl=%f\n",(a*pf)/((a*pf)+Phepu+(a*a*Reqpu)))//ans may vary due to roundoff error
//for max efficiency
mprintf("|S|/SB=sqrt(Phepu/Reqpu)=%fA\n",sqrt(Phepu/Reqpu))//ans may vary due to roundoff error








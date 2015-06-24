//example 4
//comparison of ideal carnot heat engine with actual heat engine
clear
clc
Qh=1000 //rate of heat transfer to heat engine in kW
W=450 //rate of production of work in kW
Ql=Qh-W //rate of heat rejected by heat engine in kW
nthermal=W/Qh //efficiency from the definition of efficiency
Tl=300 //temperature of surroundings in K
Th=550 //temperature of heat source in Celsius
ncarnot=1-Tl/(Th+273) //efficiency if heat engine is considered to be ideal carnot heat engine
W2=ncarnot*Qh //rate of work production if heat engine is assumed to be ideal carnot heat engine in kW
Ql2=Qh-W2 //rate of heat rejected by heat engine in kW if heat engine is assumed to be ideal carnot heat engine
printf("\n hence,energy discarded to the ambient surroundings is Ql2=%.0fkW.\n",Ql2)
printf("\n and the engine efficiency is ncarnot=%.3f.\n",ncarnot)
//example 5
//calculating required work
clear
clc
Tl=24+273 //room temperature in Kelvins
Th=35+273 //atmospheric temperature in Kelvins
Ql=4 //rate of heat rejection from room
B=Tl/(Th-Tl) //coefficient of performance of air conditioner
W=Ql/B //required work in kW
printf("\n hence,the magnitude of reqiured work is W=%.2f kW.\n",W)
//example 10
//Determiining the entropy generated
clear
clc
B=4 //COP of air conditioner
W=10 //power input of air conditioner in kW
Qh=B*W //in kW
Ql=Qh-W //in kW
Thigh=323 //in Kelvin
Tlow=263 //in Kelvin
SgenHP=(Qh*1000/Thigh)-(Ql*1000/Tlow) //in W/K
Tl=281 // in K
Th=294 //in K
SgenCV1=Ql*1000/Tlow-Ql*1000/Tl //in W/K
SgenCV2=Qh*1000/Th-Qh*1000/Thigh //in W/K
SgenTOT=SgenCV1+SgenCV2+SgenHP //in W/K
printf(" \n Hence,Total entropy generated is SgenTOT=%.1f W/K. \n",SgenTOT)
//example 2
//coefficient of performance of refrigerator
clear
clc
Qh=400 //heat rejected to kitchen air in W
W=150 //electrical input power in W
Ql=Qh-W //rate of energy taken out to cold space in W
B=Ql/W //coefficicent of performnace of refrigerator
printf("\n hence,rate of energy taken out of the cold space is Ql=%.3f W.\n",Ql)
printf("\n and coefficient of performance of the refrigerator is B=%.3f .\n",B)
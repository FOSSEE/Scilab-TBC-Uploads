//EX-4_1 PG-4.11
clc
Ie=12e-3;//emitter current
Ic=Ie/1.02;//collector current
Ib=Ie-Ic;//base current
printf("\n Therefore base current is %.0f microA \n",Ib*1e6)

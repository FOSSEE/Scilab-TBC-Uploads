
Po=50D+3//power output
e=90/100//efficiency
Pin=Po/e//power input
P=Pin-Po//total losses
//P=Pscu+Psi+Prcu+Pfw
//Pscu=Prcu=Psi, Pfw=Psi/3
Psi=P/(1+1+1+1/3)
Pscu=Psi//stator copper loss
Prcu=Psi
mprintf("Rotor copper loss=%d W\n",round(Prcu))
Pg=Pin-2*Pscu
mprintf("Air gap power=%d W\n",round(Pg))
s=Prcu/Pg
mprintf("Slip=%f p.u.", s)
//answers vary from the textbook due to round off error

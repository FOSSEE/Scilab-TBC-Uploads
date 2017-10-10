clc
V=250 //voltage rating in volts
Pout=125000 //output power in watts
ra=0.025 //armature resistance in ohms
rsc=0.01 //resistance in ohms 
rf=30 //field resistance in ohms
If=5 //field current in amperes
mprintf("Shunt field copper loss=%dW\n",If*If*rf)
Iload=Pout/V
Ia=Iload+If
Isc=Iload+If
mprintf("Ia=Isc=Iload+If=%dA\n",Ia)
mprintf("Seires filed copper losses=%dW\n",Isc*Isc*rsc)
mprintf("ACL=%fW\n",Ia*Ia*ra)//ans in textbook is wrong
mprintf("Brush copper loss=2Ia=%dW\n",2*Ia)
mprintf("Stray load loss=1%c of 125Kw=%fW\n",'%',0.01*Pout)
Prot=5000 //rotational loss in watts
losses=(If*If*rf)+(Isc*Isc*rsc)+(Ia*Ia*ra)+(2*Ia)+(0.01*Pout)+Prot //aadding all losses

mprintf("Efficiency=%f%c\n",(Pout/(Pout+losses))*100,'%')//ans may vary due to roundoff eror
rlosses=500 //rheostat losses in watts
Pin=Pout+losses+rlosses
mprintf("Pin required=%fW\n",Pin) //ans in the textbook is wrong
Ia1=sqrt((Prot+(If*If*rf))/(ra+rsc))
mprintf("Ia1=%fA\n",Ia1)







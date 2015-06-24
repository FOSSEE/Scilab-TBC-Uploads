
//calculating regulation at full load, 0.8 pf lagging
Pout1=.75*500D+3//output at max efficiency
Wi=375D+3*(1-.97)/(2*.97)
Wcu1=Wi//copper losses at 3/4th full load
Wcu=(4/3)^2*Wcu1//copper losses at full load
Is=500D+3/220
Rs=Wcu/Is^2
Vs=220//secondary voltage
Zs=220*.1/Is
Xs=sqrt(Zs^2-Rs^2)
VR=(Is*Rs*.8+Is*Xs*.6)/Vs*100
mprintf("Regulation at .8 pf lagging=%f percent\n",VR)
//calculating regulation at full load, 0.8 pf leading
VR=(Is*Rs*.8-Is*Xs*.6)/Vs*100
mprintf("Regulation at .8 pf leading=%f percent\n",VR)

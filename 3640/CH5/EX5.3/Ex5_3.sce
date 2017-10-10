clc
//Ex5_3 uses a magnetization curve given in textbook
mprintf("At 1200 rev/min and shunt field current of 0.7A Eg*=90V \n") //from magnetization curve
n=1200 //speed of rotation in rev/min
Eg1=90 //voltage in volts
wB=(n/60)*2
mprintf("wB=%dπrad/sec\n",wB)
mprintf("KaΦ*=Eg*/wB=%fV-s/rad\n",Eg1/(wB*%pi))//ans may vary due to roundoff error
Td=30 //torque in N-m
Ia=Td/(Eg1/(wB*%pi))
mprintf("Ia=τd/KaΦ*=%fA\n",Ia)//ans may vary due to roundoff error
VT=125 //voltage in volts
ra=0.2 //resistance in ohms
Eg=VT-(Ia*ra)
mprintf("Eg=%fV\n",Eg)//ans may vary due to roundoff error
w=Eg/((Eg1/(wB*%pi)))
mprintf("w=Eg/KaΦ*=%frad/s\n",w)//ans may vary due to roundoff error
n=(w*60)/(2*%pi)
mprintf("n=%frev/min\n",n)//ans may vary due to roundoff error
//other two techniques
//first technique
nB=1200 //speed in rev/min
n=nB*(Eg/Eg1)//ans may vary due to roundoff error
mprintf("n=%frev/min\n",n)
//second technique
mprintf("τd=%flb-ft\n",Td*0.738)//ans may vary due to roundoff error
mprintf("Ka`Φ=Eg*/nB=%fV-min/rev\n",Eg/nB)
Ia=(Td*0.738)/(7.04*(Eg1/nB))//ans may vary due to roundoff error
mprintf("Ia=τd/(7.04*Ka`*Φ)=%fA\n",Ia)
n=Eg/(Eg1/nB)
mprintf("n=Eg/K`aΦ=%frev/min\n",n)//ans may vary due to roundoff error






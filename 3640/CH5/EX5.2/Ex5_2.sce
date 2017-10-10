clc
I=100 //current drawn in amperes
ra=0.07 //armature resistance in ohms
Vt=230 //terminal voltage of motor in volts
mprintf("Eg*=VT*-Iara*=%fV\n",Vt-(I*ra))
n=1200 //speed of rotation in rev/min
mprintf("w*=%dπrad/sec\n",(n/60)*2)
mprintf("KaΦ=Eg*/w*=%fV-s/rad\n",(Vt-(I*ra))/((n/60)*2*%pi))//ans may vary due to roundoff error
Ia=100 //armature current in ampere
mprintf("τd=KaΦIa=%fN-m\n",(Ia*(Vt-(I*ra))/((n/60)*2*%pi)))//ans may vary due to roundoff error
Td=300 //torque in N-m
Ia=Td/((Vt-(I*ra))/((n/60)*2*%pi))//ans may vary due to roundoff error
mprintf("Ia=τd/KaΦ=%fA\n",Ia)
ra=0.07 //resistance in ohms
VT=230 //voltage in volts
w=(VT-Ia*ra)/((Vt-(I*ra))/((n/60)*2*%pi))
mprintf("w=(VT-Iara)/KaΦ=%frad/sec\n",w)//ans may vary due to roundoff error




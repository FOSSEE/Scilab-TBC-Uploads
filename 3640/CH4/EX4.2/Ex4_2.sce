clc
//this is an extension of Ex4_1
//following comes from Ex4_1
SCL=1000 //stator copper loss in watts
V=460 //line voltage of induction motor in volts
I=25 //line current of motor in amperes
pf=0.85 //power factor of motor
Pin=sqrt(3)*V*I*pf //ans  may vary due to roundoff error
Pg=Pin-SCL //air gap power
RCL=500 //rotor copper loss in watts
Phe=800 //core loss in watts
Pfw=250 //winding and friction loss in Watts
PLL=200 //stray load loss in watts
DMP=Pg-RCL ///developed mechanical power in watts
Prot=Phe+Pfw+PLL //power loss in rotor in watts
Pout=DMP-Prot
//above is from Ex4_1
s=RCL/Pg
p=4 //no of poles
mprintf("s=RCL/Pg=%f\n",s)//ans may vary due to roundoff error
ws=(4*%pi*60)/p //synchronous angular frequency 
mprintf("ws=%frad/s\n",ws)//ans may vary due to roundoff error
ns=(120*60)/p
mprintf("ns=%drev/min\n",ns)//ans may vary due to roundoff error
w=ws*(1-s)
n=ns*(1-s)
mprintf("w=ws(1-s)=%frad/s\n",w)//ans may vary due to roundoff error
mprintf("n=ns(1-s)=%frev/min\n",n)//ans may vary due to roundoff error
mprintf("τd=DMP/w=%fN-m\n",DMP/w)//ans may vary due to roundoff error
mprintf("τ=Pout/w=%fN-m\n",Pout/w)//ans may vary due to roundoff error






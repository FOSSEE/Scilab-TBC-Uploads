clc
B=0.78 //flux density in tesla
A=200*(10^(-4))//cross sectional area in centimetre square
mprintf("Flux per pole Φ=B.A=%fWb\n",B*A)
C=95 //no of coils
Nc=2 //no of turns in each coil
Z=2*C*Nc
mprintf("Z=2*C*Nc=%fconductors\n",Z)
n=1200 //rotating speed in rev/min
w=(n/60)*(2*%pi)
mprintf("w=%frad/s\n",w)//ans may vary due to rounof error
a=2 //no of paths
p=4 //no of poles
Ka=(Z*p)/(2*%pi*a)
mprintf("Ka=%fV-s/Wb\n",Ka)//ans may vary due to rounof error
Eg=Ka*B*A*w
mprintf("Eg=Ka*Φ*w=%fV\n",Eg)//ans may vary due to rounof error
VT=250 //terminal voltage in volts
ra=0.2 //armture resistance in ohms
Ia=(VT-Eg)/ra
mprintf("Ia=%fA\n",Ia)//ans may vary due to rounof error
Pin=VT*Ia
mprintf("Pin=%fW\n",Pin)//ans in textbook is wrong
mprintf("Armature copper loss=%fW\n",((Ia*Ia)*ra))//ans in textbook is wrong
Pd=Pin-((Ia*Ia)*ra)//ans in textbook is wrong
mprintf("Pd=Pin-coper loss=%fW\n",Pd)
mprintf("τd=Pd/w=%fN-m ",Pd/w)
cf=0.7376 //conversion factor for conversion from N-m to lb-ft
mprintf("or %flb-ft",(Pd/w)*cf)//ans may vary due to roundoff error












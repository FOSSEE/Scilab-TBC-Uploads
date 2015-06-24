
Po=60D+3//full load output of the motor 
e=0.905//efficiency of the motor
Pin=Po/e
V=400//applied voltage
I=Pin/V//line current drawn by the motor
Rsh=200//resistance of the shunt field winding
Ish=V/Rsh
Ia=I-Ish
Ra=0.1//armature resistance
Eb=V-Ia*Ra
A=2//no. of parallel paths in armature winding
P=4//no. of poles
phi=45D-3//flux per pole
Z=450//total number of conductors
N=round(60*Eb*A/(P*phi*Z))
mprintf("Full load speed=%d rpm\n",N)
//calculating armature torque
Ta=0.159*P*phi*Ia*Z/A
mprintf("Torque developed by the armature of the DC motor=%f N-m\n",Ta)
//calculating useful torque
Psh=60D+3//shaft power
Tsh=60*Psh/(2*%pi*N)
mprintf("Useful torque=%f N-m",Tsh)
//error in the textbook answer for useful torque

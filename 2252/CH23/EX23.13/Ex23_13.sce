

//calculating ratio of maximum to full load torque
Nr=970//speed at full load torque in rpm
Ns=50*120/6//synchronous speed in rpm
s=(Ns-Nr)/Ns//slip at full load
R2=.02//rotor resistance per phase
X2=.3//rotor reactance per phase at standstill
alpha=R2/X2
//Full load torque Tf=k1*Kt
k1=s*alpha/(s^2+alpha^2)
//maximum torque Tmax=Kt/2
x=1/(2*k1)
mprintf("Ratio of maximum to full load torque=%f\n",x)
//calculating speed at maximum torque
s_m=R2/X2//slip at maximum torque
Nm=(1-s_m)*Ns
mprintf("Speed at maximum torque=%d rpm\n",round(Nm))
//calculating ratio of starting torque to full load torque
s=1//slip at starting
//starting torque Tst=k2*Kt
k2=s*alpha/(s^2+alpha^2)
y=k2/k1
mprintf("Ratio of starting torque to full load torque=%f\n",y)


Ns=120*50/4//synchronous speed
R2=.03//rotor resistance
X2=.15//rotor reactance
alpha=R2/X2
s_m=alpha//slip at maximum torque
Nr=(1-s_m)*Ns//speed at maximum torque
//alpha=(.03+r)/.15
//Tst=Kt*alpha/(1+alpha^2)
//Tmax=Kt/2
//Tst/Tmax=3/4-->3*alpha^2-8*alpha+3=0
//solving for alpha
alpha=(8-sqrt(8^2-4*3*3))/(2*3)
r=.15*alpha-.03
mprintf("If a resistance of %f ohm is added in the circuit, the required starting torque will be achieved",r)

    

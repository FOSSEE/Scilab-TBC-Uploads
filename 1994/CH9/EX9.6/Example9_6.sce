//Chapter-9,Example9_6,pg 9_25
P=4
A=P
No=1000//speed of motor
Z=540
V=230
phi=25*10^-3//flux(In Wb)
Ra=0.8
Ebo=phi*P*No*Z/(60*A)//induced e.m.f
Iao=(V-Ebo)/Ra//armature current
SL=Ebo*Iao//stray losses
wo=2*%pi*No/60//angular velocity
Tf=Ebo*Iao/wo//loss torque
printf("induced e.m.f\n")
printf("Ebo=%.f V\n",Ebo)
printf("armature current\n")
printf("Ia=%.2f A\n",Iao)
printf("stray losses\n")
printf("Sl=%.2f W\n",SL)
printf("loss torque\n")
printf("Tf=%.3f Nm",Tf)

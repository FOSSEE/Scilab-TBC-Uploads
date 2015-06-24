
//solving part(i)
Rb=5//resistance of coil B
Xb=2*%pi*50*.02//inductive reactance of coil B
Zb=sqrt(Rb^2+Xb^2)
phi_b=atand(Xb/Rb)//phase difference of Vb with current as reference phasor
phi_a=90*%pi/180-phi_b*%pi/180//Va and Vb are in quadrature
//Xc/R=tan(phi_a)
//Vb=2*Va-->R^2+Xc^2=Zb^2/4
//on solving for R and Xc
R=sqrt((Zb^2/4)/(1+tan(phi_a)^2))
Xc=tan(phi_a)*R
C=1/(2*%pi*50*Xc)
mprintf("R=%f ohm\nC=%f microF\n",R,C*1D+6)
//solving part(ii)
Rt=5+R//total resistance of circuit
Xt=Xb-Xc//resultant reactance of circuit
Zt=sqrt(Rt^2+Xt^2)
V=220//applied voltage
I=V/Zt
mprintf("Current drawn by the circuit=%f A\n",I)
//solving part(iii)
//as the reactance is positive, circuit is inductive
pf=Rt/Zt//lagging
mprintf("Power factor of the circuit=%f(lagging)\n",pf)
//the answers vary from the textbook due to round off error

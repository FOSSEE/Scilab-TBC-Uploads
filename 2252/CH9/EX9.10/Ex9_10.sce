
//calculating phase voltage
Vl=440//line voltage
Vph=Vl/sqrt(3)//star connected circuit
mprintf("Phase voltage=%f V\n", Vph)
Iph=20//phase current
Zph=Vph/Iph//impedance of load per phase
//calculating load parameters-current in each phase lags behind its voltage by 40 degrees
//on solving for R
R=Zph/sqrt(1+(tan(40*%pi/180))^2)
X=R*tan(40*%pi/180)
mprintf("Load parameters are\nR=%f ohm\nX=%f ohm\n",R,X)
//calculating total power
P=3*Vph*Iph*cos(40*%pi/180)
mprintf("Total power consumed=%f kW\n",P*10^-3)
//calculating W1 and W2-->W1+W2=P, W1-W2=P*tan(phi)/sqrt(3)
a=[1 1;1 -1]
b=[P;P*tan(40*%pi/180)/sqrt(3)]
w=inv(a)*b
mprintf("W1=%f kW,\nW2=%f kW", w(1,1)/1000, w(2,1)/1000)

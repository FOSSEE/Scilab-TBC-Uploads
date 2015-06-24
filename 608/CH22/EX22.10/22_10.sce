//Problem 22.10: A 415 V, three-phase, 50 Hz, 4 pole, star-connected induction motor runs at 24 rev/s on full load. The rotor resistance and reactance per phase are 0.35 ohm and 3.5 ohm respectively, and the effective rotor-stator turns ratio is 0.85:1. Calculate (a) the synchronous speed, (b) the slip, (c) the full load torque, (d) the power output if mechanical losses amount to 770 W, (e) the maximum torque, (f) the speed at which maximum torque occurs and (g) the starting torque.

//initializing the variables:
V = 415; // in Volts
f = 50 ; // in Hz
nr = 24; // in rev/sec
p = 4/2; // no. of pole pairs
R2 = 0.35; // in Ohms
X2 = 3.5; // in Ohms
tr = 0.85; // turn ratio N2/N1
Pl = 770; // in Watt
m = 3; // no. of phases

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
ns = f/p
//The slip, s
s = ((ns - nr)/ns)*100 // in percent
//Phase voltage, E1 = V/(3^0.5)
E1 = V/(3^0.5)
//Full load torque
T = [m*(tr^2)/(2*%pi*ns)]*[(s/100)*E1*E1*R2/(R2*R2 + (X2*(s/100))^2)]
//Output power, including friction losses
Pm = 2*%pi*nr*T
//power output
Po = Pm - Pl
//Maximum torque occurs when R2 = Xr = 0.35 ohm
//Slip 
sm = R2/X2
//maximum torque, Tm 
Tm = [m*(tr^2)/(2*%pi*ns)]*[sm*E1*E1*R2/(R2*R2 + (X2*sm)^2)]
//speed at which maximum torque occurs
nrm = ns*(1 - sm)
nrmrpm = nrm*60
//At the start, i.e., at standstill, slip, s=1
ss = 1
//starting torque
Ts = [m*(tr^2)/(2*%pi*ns)]*[ss*E1*E1*R2/(R2*R2 + (X2*ss)^2)]

printf("\n\n Result \n\n")
printf("\n(a)Synchronous speed is %.0f rev/sec",ns)
printf("\n(b)Slip is %.0f percent",s)
printf("\n(c)Full load torque is %.2f Nm",T)
printf("\n(d)power output is %.2E W",Po)
printf("\n(e)maximum torque is %.2f Nm",Tm)
printf("\n(f)speed at which maximum torque occurs is %.0frev/min",nrmrpm)
printf("\n(g)starting torque is %.2f Nm",Ts)
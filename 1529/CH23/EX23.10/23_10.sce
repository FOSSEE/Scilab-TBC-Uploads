//Chapter 23, Problem 10
clc;
nr = 24;                        // in rev/sec
p = 4/2;                         // no. of pole pairs
R2 = 0.35;                       // in Ohms
X2 = 3.5;                           // in Ohms
V = 415;                        // in Volts
tr = 0.85;                       // turn ratio N2/N1
f = 50 ;                        // in Hz
Pl = 770;                       // in Watt
m = 3;                          // no. of phases

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
printf("\n\n(a)Synchronous speed is %.0f rev/sec",ns)
printf("\n\n(b)Slip is %.0f percent",s)
printf("\n\n(c)Full load torque is %.2f Nm",T)
printf("\n\n(d)power output is %.2E W",Po)
printf("\n\n(e)maximum torque is %.2f Nm",Tm)
printf("\n\n(f)speed at which maximum torque occurs is %.0frev/min",nrmrpm)
printf("\n\n(g)starting torque is %.2f Nm",Ts)

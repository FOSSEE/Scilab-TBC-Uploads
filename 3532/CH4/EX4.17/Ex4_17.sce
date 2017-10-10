clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.11.3\n')
//given data
J=0.049//moment of inertia in kg-m^2
Kt=0.98//stiffness in N-m/rad
Ct=0.11//damping coefficient in N-m_sec/rad
N=15//R.P.M
thetaRD=2//relative amplitude between ring and shaft in degrees
//calculations
W=N*2*%pi/60 //frequency of  vibrating shaft in rad/sec
Wn=sqrt(Kt/J) //natural freqency in rad/sec
zeta=(Ct/(2*sqrt(Kt*J))) //damping factor
thetaRR=(thetaRD/(57.3)) //relative amplitude in radians
bet=(W/Wn)
thetamax=thetaRR*((sqrt((1-bet^2)^2+(2*zeta*bet)^2)/bet^2))
maxacc=(W^2)*thetamax
//output
mprintf('The maximum acceleration of the shaft is %4.4f rad/(sec^2)',maxacc)

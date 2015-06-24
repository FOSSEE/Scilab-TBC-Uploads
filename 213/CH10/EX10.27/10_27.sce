//To find speed, time and KE lost
clc
//Given:
d1=220, r1=d1/2, d2=160, r2=d2/2 //mm
W=570 //N
m1=800, m2=1300 //kg
k1=200/1000, k2=180/1000 //m
mu=0.35
N1=1250 //rpm
n=2
//Solution:
//Calculating the initial angular speed of the motor shaft
omega1=2*%pi*N1/60 //rad/s
//Calculating the moment of inertia for the motor armature and shaft
I1=m1*k1^2 //kg-m^2
//Calculating the moment of inertia for the rotor
I2=m2*k2^2 //kg-m^2
//Calculating the final speed of the motor and rotor
omega2=0
omega3=(I1*omega1+I2*omega2)/(I1+I2) //rad/s
//Calculating the mean radius of the friction plate
R=(r1+r2)/(2*1000) //m
//Calculating the frictional torque
T=n*mu*W*R //N-m
//Calculating the angular acceleration of the rotor
alpha2=T/I2 //rad/s^2
//Calculating the time to reach the speed of omega3
omegaF=omega3, omegaI=omega2
t=(omegaF-omegaI)/alpha2 //seconds
//Calculating the angular kinetic energy before impact
E1=1/2*I1*omega1^2+1/2*I2*omega2^2 //N-m
//Calculating the angular kinetic energy after impact
E2=1/2*(I1+I2)*omega3^2 //N-m
//Calculating the kinetic energy lost during the period of slipping
E=E1-E2 //N-m
//Calculating the torque on armature shaft
T1=-60-T //N-m
//Calculating the torque on rotor shaft
T2=T //N-m
//Calculating the time of slipping assuming constant resisting torque:
//Considering armature shaft, omega3 = omega1+alpha1*t1, or omega3-(T1/I1)*t1 = omega1        .....(i)
//Considering rotor shaft, omega3 = alpha2*t1, or omega3-(T2/I2)*t1 = 0                       .....(ii)
A=[1 -T1/I1; 1 -T2/I2]
B=[omega1; 0]
V=A \ B
t11=V(2) //Time of slipping assuming constant resisting torque, seconds
//Calculating the time of slipping assuming constant driving torque:
//Calculating the torque on armature shaft
T1=60-T //N-m
t12=(omega2-omega1)/(T1/I1-T2/I2) //Time of slipping assuming constant driving torque, seconds
//Results:
printf("\n\n Final speed of the motor and rotor, omega3 = %.2f rad/s.\n",omega3)
printf(" Time to reach the speed of %.2f rad/s, t = %.1f s.\n",omega3,t)
printf(" Kinetic energy lost during the period of slipping = %d N-m.\n",E)
printf(" Time of slipping assuming constant resisting torque, t1 = %.1f s.\n",t11)
printf(" Time of slipping assuming constant driving torque, t1 = %d s.\n\n",t12)
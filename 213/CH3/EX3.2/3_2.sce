//To find the time, torque and power
clc
//Given:
mC=500,mD=250 //kg
s=100,r=0.5,k=0.35 //m
m=3 //kg/m
//Solution:
//Velocities of the cage
u1=0,v1=10,v2=10,u3=10,v3=0 //m/s
//Accelerations of the cage
a1=1.5,a3=-6 //m/s^2
s=100 //m
//Calculating the time taken by the cage to reach the top
t1=(v1-u1)/a1 //seconds
//Calculating the distance moved by the cage during time t1
s1=(v1+u1)/2*t1 //m
//Calculating the time taken for the cage from initial velocity u3=10 m/s to final velocity of v3=0
t3=(v3-u3)/a3 //seconds
//Calculating the distance moved by the cage during time t3
s3=(v3+u3)/2*t3 //m
//Calculating the distance travelled during constant velocity of v2=10 m/s
s2=s-s1-s3 //m
//Calculating the time taken for the cage during constant velocity
t2=s2/v2 //seconds
//Calculating the time taken for the cage to reach the top
t=t1+t2+t3 //seconds
//Calculating the total mass of the rope for 100 metres
mR=m*s //kg
//Calculating the force to raise the cage and rope at uniform speed
F1=(mC+mR)*9.81 //N
//Calculating the torque to raise the cage and rope at uniform speed
T1=F1*r //N-m
//Calculating the force to accelerate the cage and rope
F2=(mC+mR)*a1 //N
//Calculating the torque to accelerate the cage and rope
T2=F2*r //N-m
//Calculating the mass moment of inertia of the drum
I=mD*k^2 //kg-m^2
//Calculating the angular acceleration of the drum
alpha=a1/r //rad/s^2
//Calculating the torque to accelerate the drum
T3=I*alpha //N-m
//Calculating the total torque which must be applied to the drum at starting
T=T1+T2+T3 //N-m
//Calculating the mass of 33.35 m rope
m1=m*33.35 //kg
//Calculating the reduction of torque
T4=(m1*9.81+m1*a1)*r //N-m
//Calculating the angular velocity of drum
omega=v2/(2*%pi*r) //rad/s
//Calculating the power
P=T4*omega/1000 //Power, kW
//Results:
printf("\n\n The time taken for the cage to reach the top, t = %.2f s.\n",t)
printf(" The total torque which must be applied to the drum during starting, T = %.1f N-m.\n",T)
printf(" The power required is %.3f kW.\n\n",P)
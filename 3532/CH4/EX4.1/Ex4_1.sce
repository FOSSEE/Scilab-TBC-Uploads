clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.2.1\n')
//given data
//T=To*sin(W*t)
To=0.588 //maximum value of periodic torque in N-m 
W=4// freqency of applied force in rad/sec
J=0.12//moment of inertia of wheel in kg-m^2
Kt=1.176//stiffness of wire in N-m/rad
Ct=0.392/1 //damping coefficient in N-m_sec/rad
//calculations
theta=To/sqrt((Kt-J*W^2)^2+(Ct*W)^2)//Equation for torsional vibration amplitude from Fig (4.2.2) and Eqn (4.2.5)
MaxDcoup=Ct*W*theta//maximum damping couple in N-m
if atan((Ct*W)/(Kt-J*W^2))>0  then
    phiD=(180/%pi)*atan((Ct*W)/(Kt-J*W^2));//from eqn 4.2.6(in degrees)
else
    phiD=180+(180/%pi)*atan((Ct*W)/(Kt-J*W^2));
    
end
//output
mprintf(' a)The maximum angular displacement from rest position is %4.4f radians\n b)The maximum couple applied to dashpot is %4.4f N-m\n c)angle by which the angular displacement lags the torque is %4.4f degrees',theta,MaxDcoup,phiD)

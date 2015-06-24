//Initilization of variables
OA=0.6 //m
w=8 //rad/s
theta=30 //degrees
v_O=12 //m/s
alpha=4 //rad/s^2
a_O=6 //m/s^2
//Calculations
//Velocity Calculations
v_AO=OA*w //m/s
v_Ah=v_AO*sind(theta)+v_O //m/s horizontal component
v_Av=v_AO*cosd(theta) //m/s
v_A=sqrt((v_Ah^2)+(v_Av^2)) //m/s
phi=atand(v_Av/v_Ah) //degrees
//Acceleration Calculations
a_AOt=OA*alpha //m/s^2
a_AOn=OA*w^2 //m/s^2
a_Ah=-a_O-a_AOn*cosd(theta)-a_AOt*sind(theta) //m/s^2
a_Av=-a_AOn*sind(theta)+a_AOt*cosd(theta) //m/s^2
a_A=sqrt((a_Ah^2)+(a_Av^2)) //m/s^2
phi2=atand(a_Av/a_Ah) //degrees
//Result
clc
printf('The velocity is %fm/s making an angle %f degrees with horizontal\n The acceleration is %fm/s^2 making an angle %fdegrees with horizontal',v_A,phi,a_A,phi2) 

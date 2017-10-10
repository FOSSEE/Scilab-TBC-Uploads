// SAMPLE PROBLEM 5/1
clc;clear;funcprot(0);
// Given data
n_1=1800;// rev/min
t_0=0;// s
// alpha=4t;
n_2=900;// rev/min

// Calculation
// (a)
omega_1=(-2*%pi*n_1)/60;// rad/s
// omega=-(60*%pi)+2t^2
omega_2=(-2*%pi*n_2)/60;// rad/s
t=sqrt((omega_2-omega_1)/2);// s
// (b)
// The flywheel changes direction when its angular velocity is momentarily zero. Thus,
t_b=sqrt((0-omega_1)/2);// s
// (c)
t_0=0;// s
t_1=t_b;// s
theta_1=integrate('omega_1+(2*t^2)','t',t_0,t_1);// rad
N_1=abs(-theta_1/(2*%pi));// rev(clockwise)
t_1=t_b;// s
t_2=14;// s
theta_2=integrate('omega_1+(2*t^2)','t',t_1,t_2);// rad
N_2=theta_2/(2*%pi);// rev
N=N_1+N_2;// rev
printf("\n(a)The time required for the flywheel to reduce its clockwise angular speed,t=%1.2f s \n(b)The time required for the flywheel to reverse its direction of rotation,t=%1.2f s \n(c)The total number of revolutions,N=%3.0f rev",t,t_b,N);

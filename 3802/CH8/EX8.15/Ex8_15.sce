//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_15.sce.

clc;
clear;
P_in_HP=37.5;
V=220;
N=535;
Ra=0.086;
Ia1=140;
I=200;

E=V-(Ia1*Ra);
R=(V+E)/I;
R_ext=R-Ra;
P=(P_in_HP)*736;
omega=(2*%pi*N)/60;
FL_T=P/omega;
initial_braking_T=FL_T*(I/Ia1);
Ia2=(V+(E/2))/R;
halfspeed_braking_T=FL_T*(Ia2/Ia1);
printf("\n  Armature circuit resistance=%1.2f ohm \n",R)
printf("\n  The external resistance=%1.3f ohm \n",R_ext)
printf("\n  Initial braking torque=%3.1f Nm \n",initial_braking_T)
printf("\n  Braking torque at half speed=%3.1f Nm \n",halfspeed_braking_T)
//Answer vary due to roundoff error

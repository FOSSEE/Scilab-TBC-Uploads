// chapter 14
// example 14.10
// Determine the firing angle of the armature convertor, speed of the motor and firing angle of the field convertor
// page-885-886
clear;
clc;
// given
P=25; // in HP (power rating of motor)
E0=320; // in V (voltgae rating of motor)
N=960; // in rpm
Eac=210; // in V (ac input voltage)
Ra=0.2; // in ohm (armature resistance)
Rf=130; // in ohm (field resistance)
K_a=1.2; // in V/A rad/s (motor voltage constant)
T=110; // in Nm (torque developed)
alpha_a=0; // in degree (firing angle for armature convertor)
N2=1750; // in rpm
// calculate
Ep=Eac/sqrt(3);
Em=sqrt(2)*Ep; // calculation of peak value of phase voltage
Ef=(3*sqrt(3)*Em/%pi)*cosd(alpha_a);
If=Ef/Rf;
// since T=Ia*Ka*If, therefore we get
Ia=T/(K_a*If);
w=N*(2*%pi/60);
Eb=K_a*If*w;
Ea=Eb+Ia*Ra;
// since Ea=(3*sqrt(3)*Em/%pi)*cosd(alpha), therefore we get
alpha=acosd((Ea/Em)*(%pi/(3*sqrt(3))));
Ea1=(3*sqrt(3)*Em/%pi)*cosd(alpha_a);
Eb1=Ea1-Ia*Ra;
w1=Eb1/(K_a*If);
N1=w1*(60/(2*%pi));
w2=N2*(2*%pi/60);
// since Eb=K_a*If*w, therefore we get
If=Eb1/(K_a*w2);
Ef=If*Rf;
// since Ef=(3*sqrt(3)*Em/%pi)*cosd(alpha_f), therefore we get
alpha_f=acosd((Ef/Em)*(%pi/(3*sqrt(3))));
printf("\nThe firing angle of the armature convertor is \talpha= %.2f degree",alpha);
printf("\nThe speed of the motor is \t\t\t N1= %.2f rpm",N1);
printf("\nThe firing angle of the field convertor is \t alpha_f= %.2f",alpha_f);
// Note: The answer varies slightly due to precise calculations
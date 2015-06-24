// chapter 14
// example 14.5
// What should be firing angle different speeds and calculate the motor speed
// page-866-867
clear;
clc;
// given
Ea=210; // in V
N=1200; // in rpm (speed)
Ia=10; // in A (armature current)
Ra=1.5; // in ohm (armature resistance)
Es=230; // in V (supply voltage)
N1=800; // in rpm (rated torque)
N2=1200; // in rpm (braking torque)
alpha3=165; // in degree
// calculate
Em=Es*sqrt(2); // calculation of peak voltage
Eb=Ea-Ia*Ra; // calculation of rated back emf
w=abs(N2)*(2*%pi/60); // calculation of rated angular speed
Ka_phi=Eb/w; // calculation of motor voltage constant
Eb1=(N1/N2)*Eb; // calculation of back emf at speed N1
Ea1=Eb1+Ia*Ra; // calculation of armature voltage at speed N1
// since Ea=(2*Em/%pi)*cosd(alpha), therefore we get
alpha1=acosd(Ea1*(%pi/(2*Em))); // calculation of firing angle at speed N1
Ea2=-Eb+Ia*Ra; // calculation of armature voltage at speed N2
alpha2=acosd(Ea2*(%pi/(2*Em))); // calculation of firing angle at speed N2
Ea3=(2*Em/%pi)*cosd(alpha3); // calculation of armature voltage at aplha3
Eb3=Ea3-Ia*Ra; // calculation of back emf at alpha3
w3=abs(Eb3/Ka_phi); // calculation of speed at alpha3
N3=w3*(60/(2*%pi)); // calculation of speed in rpm
printf("\nThe firing angle at N1=%.f rpm is \t alpha1=%.2f degree",N1,alpha1);
printf("\nThe firing angle at N2=%.f rpm is \t alpha2=%.2f degree",N2,alpha2);
printf("\n\nThe speed of the motor is \t w3=%.2f rad/s or \t N3=%.1f rpm",w3,N3);
// Note : The answers vary slightly due to precise calculations
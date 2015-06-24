clc;
clear;
format('e',11);
f=15*10^9;
w=2*%pi*f;
a=0.03;
epsilone_0=8.85*10^-12;
m_0=4*%pi*10^-7;                //The permeability of air.
//for TEM mode.
k=w*sqrt(m_0*epsilone_0);
beta=k;
disp(beta);
Z0=sqrt(m_0/epsilone_0);
lemda_g=2*%pi/beta;
disp(Z0,"The wave impedence(in Ohm)=");
disp(lemda_g,"The wavelength(in meter)=");
//for TE modes.
lemda_c10=2*0.03/1;                 //for m=1.
lemda_c20=2*0.03/2;                 //for m=2.
lemda_c30=2*0.03/3;                 //for m=3.
lemda=3*10^8/f;                     //free space wavelength.
disp(lemda_c30,"lemda_c30(in meter)=",lemda_c20,"lemda_c20(in meter)=",lemda_c10,"lemda_c10(in meter)=");
disp(lemda,"Free space wavelength(in meter)=");
disp("so,only first two modes will propagate.","lemda must be less then lemda_cm,");
beta_10=sqrt(k^2-(%pi/a)^2);
beta_20=sqrt(k^2-(2*%pi/a)^2);
lemda_g10=2*%pi/beta_10;
lemda_g20=2*%pi/beta_20;
disp(beta_20,"beta_20(in rad/m)=",beta_10,"beta_10(in rad/m)=");
disp(lemda_g20,"lemda_g20(in meter)=",lemda_g10,"lemda_g10(in meter)=");
vp_10=w/beta_10;            //phase velocity.
vp_20=w/beta_20;
disp(vp_20,"vp_20(in m/s)=",vp_10,"vp_10(in m/s)=");

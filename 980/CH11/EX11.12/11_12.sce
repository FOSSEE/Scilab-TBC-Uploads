clc;
clear;
format('v',11);
f=1*10^6;
w=2*%pi*f;
sigma=5.814*10^7;
epsilone_0=8.85*10^-12;
epsilone=epsilone_0;
loss_tangent=sigma/(w*epsilone);
disp(loss_tangent,"loss tangent=");
beta1=sqrt((w*sigma*4*%pi*10^-7)/2);             //as loss tangent>>1.
alpha=beta1;                                     //as loss tangent>>1.
delta=1/alpha;
lemda_copper=2*%pi/beta1;
disp(beta1,"beta=");
disp(alpha,"alpha=");
disp(delta,"skin depth(in meter)=");
disp(lemda_copper,"The wave length(in meter)=");

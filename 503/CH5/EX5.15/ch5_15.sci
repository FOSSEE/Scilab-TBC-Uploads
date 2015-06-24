// to find motor speed

clc;
n=1500;        //speed of sync generator
p=4;
f=n*p/120;

p_im=6;
n_s=120*f/p_im;
s=0.05;        //slip
n_im=(1-s)*n_s;
disp(n_im,'speed of induction motor(rpm)');
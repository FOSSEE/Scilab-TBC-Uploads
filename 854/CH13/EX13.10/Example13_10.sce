//clear//
//Caption:Program to determine group velocity and phase velocity of a wave
//Example13.10
//page470
clc;
w = sym('w');
wo = sym('wo');
no = sym('no');
c = sym('c');
beta_w = (no*w^2)/(wo*c);
disp(beta_w,'Phase constant=')
d_beta_w = diff(beta_w,w);
disp(d_beta_w,'Differentiation of phase constant w.r.to w =')
Vg = 1/d_beta_w;
Vg = limit(Vg,w,wo);
Vp = w/beta_w;
Vp = limit(Vp,w,wo);
disp(Vg,'Group velocity =')
disp(Vp,'Phase velocity=')
//Result
//Phase constant=   
//  no*w^2/(c*wo)   
//Differentiation of phase constant w.r.to w =   
//  2*no*w/(c*wo)   
//Group velocity =   
//  c/(2*no)   
//Phase velocity=   
//  c/no   

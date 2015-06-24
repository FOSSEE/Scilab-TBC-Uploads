// scilab Code Exa 11.4 Calculation on hub,mean and tip sections 

dm=50/100; // Mean Blade ring diameter in m
rm=dm/2;
dh=0.3098354; // from results of exa 11.2
dt=0.6901646;
um=100; // peripheral speed in m/s
beta_1m=51;
beta_2m=9;
alpha_1m=7;  //  air angle at rotor and stator exit
alpha_2m=50.177922;
omega=um/rm;
rh=dh/2;
rt=dt/2;
uh=omega*rh;
ut=omega*rt;

// part(a) rotor blade air angles
cx=73.654965;
c_theta1m=cx*tand(alpha_1m);
C1=rm*c_theta1m;
c_theta1h=C1/rh;
c_theta1t=C1/rt;
c_theta2m=cx*tand(alpha_2m);
C2=rm*c_theta2m;
c_theta2h=C2/rh;
c_theta2t=C2/rt;
disp("(a) the rotor blade air angles are")
// for hub section
alpha1h=atand(C1/(rh*cx));
alpha2h=atand(C2/(rh*cx));
disp("for hub section")
disp("degree",alpha1h,"alpha1h=")
disp("degree",alpha2h,"alpha2h=")
beta1h=atand((uh/cx)-tand(alpha1h));
beta2h=atand((uh/cx)-tand(alpha2h));
disp("degree",beta1h,"beta1h=")
disp("degree",beta2h,"beta2h=")

// for tip section
alpha1t=atand(C1/(rt*cx));
alpha2t=atand(C2/(rt*cx));
disp("for tip section")
disp("degree",alpha1t,"alpha1t= ")
disp("degree",alpha2t,"alpha2t= ")
beta1t=atand((ut/cx)-tand(alpha1t));
beta2t=atand((ut/cx)-tand(alpha2t));
disp("degree",beta1t,"beta1t= ")
disp("degree",beta2t,"beta2t= ")

// part(b)Flow coefficients
disp("(b)Flow coefficients are")
phi_h=cx/uh;
disp(phi_h,"phi_h=")
phi_m=cx/um;
disp(phi_m,"phi_m=")
phi_t=cx/ut;
disp(phi_t,"phi_t=")
// part(c) degrees of reaction
disp("(c)Degrees of reaction are")
Rh=cx*(tand(beta1h)+tand(beta2h))*100/(2*uh);
disp("%",Rh,"Rh=")
Rm=cx*(tand(beta_1m)+tand(beta_2m))*100/(2*um);
disp("%",Rm,"Rm=")
Rt=cx*(tand(beta1t)+tand(beta2t))*100/(2*ut);
disp("%",Rt,"Rt=")

// part(d) specific work
w=omega*(C2-C1);
disp("kJ/kg",w*1e-3,"(d)specific work is")
// part(e) the loading coefficients
disp("(e)the loading coefficients are")
shi_h=w/(uh^2);
disp(shi_h,"shi_h=")
shi_m=w/(um^2);
disp(shi_m,"shi_m=")
shi_t=w/(ut^2);
disp(shi_t,"shi_t=")

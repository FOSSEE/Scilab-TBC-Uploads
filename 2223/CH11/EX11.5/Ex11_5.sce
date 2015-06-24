// scilab Code Exa 11.5 Forced Vortex axial compressor stage 

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
C1=c_theta1m/rm;
c_theta1h=C1*rh;
c_theta1t=C1*rt;
K1=cx^2+(2*(C1^2)*(rm^2));
cx1h=sqrt(K1-(2*(C1^2)*(rh^2)));
cx1t=sqrt(K1-(2*(C1^2)*(rt^2)));
c_theta2m=cx*tand(alpha_2m);
C2=c_theta2m/rm;
c_theta2h=C2*rh;
c_theta2t=C2*rt;
K2=cx^2-(2*(C2-C1)*omega*(rm^2))+(2*(C2^2)*(rm^2));
cx2h=sqrt(K2+(2*(C2-C1)*omega*(rh^2))-(2*(C2^2)*(rh^2)));
cx2t=sqrt(K2+(2*(C2-C1)*omega*(rt^2))-(2*(C2^2)*(rt^2)));
disp("(a) the rotor blade air angles are")
// for hub section
alpha1h=atand(C1*rh/cx1h);
alpha2h=atand(C2*rh/cx2h);
disp("for hub section")
beta1h=atand((uh/cx1h)-tand(alpha1h));
beta2h=atand((uh/cx2h)-tand(alpha2h));
disp("degree",beta1h,"beta1h=")
disp("degree",beta2h,"beta2h=")

// for tip section
alpha1t=atand(C1*rt/cx1t);
alpha2t=atand(C2*rt/cx2t);
disp("for tip section")
beta1t=atand((ut/cx1t)-tand(alpha1t));
beta2t=atand((ut/cx2t)-tand(alpha2t));
disp("degree",beta1t,"beta1t= ")
disp("degree",beta2t,"beta2t= ")

// part(b) specific work
wh=omega*(C2-C1)*(rh^2);
wm=omega*(C2-C1)*(rm^2);
wt=omega*(C2-C1)*(rt^2);
disp("kJ/kg",wh*1e-3,"(b)specific work at hub is")
disp("kJ/kg",wm*1e-3,"specific work at mean section is")
disp("kJ/kg",wt*1e-3,"specific work at tip is")
// part(c) the loading coefficients
disp("(c)the loading coefficients are")
shi_h=wh/(uh^2);
disp(shi_h,"shi_h=")
shi_m=wm/(um^2);
disp(shi_m,"shi_m=")
shi_t=wt/(ut^2);
disp(shi_t,"shi_t=")

// part(c) degrees of reaction
disp("(d)Degrees of reaction are")
Rh=((cx1h^2)*(secd(beta1h)^2)-(cx2h^2)*(secd(beta2h)^2))*100/(2*wh);
Rm=((cx^2)*(secd(beta_1m)^2)-(cx^2)*(secd(beta_2m)^2))*100/(2*wm);
Rt=((cx1t^2)*(secd(beta1t)^2)-(cx2t^2)*(secd(beta2t)^2))*100/(2*wt);
disp("%",Rh,"Rh=")
disp("%",Rm,"Rm=")
disp("%",Rt,"Rt=")

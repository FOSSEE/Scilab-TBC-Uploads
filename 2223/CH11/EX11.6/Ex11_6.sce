// scilab Code Exa 11.6 General Swirl Distribution axial compressor 

Rm=0.5; // Degree of reaction
dm=36/100; // Mean Blade ring diameter in m
rm=dm/2;
N=18e3; // rotor Speed in RPM
h=6/100; // blade height at entry in m
dh=dm-h;
dt=dm+h;
cx=180; // Axial velocity in m/s
alpha_1m=25;  //  air angle at rotor and stator exit
alpha_2m=54.820124;  
um=%pi*dm*N/60;
omega=um/rm;
rh=dh/2;
rt=dt/2;
uh=omega*rh;
ut=omega*rt;

// part(a) rotor blade air angles
c_theta1m=cx*tand(alpha_1m);
c_theta2m=cx*tand(alpha_2m);
a=0.5*(c_theta1m+c_theta2m)
b=rm*(c_theta2m-c_theta1m)*0.5;
c_theta1h=a-(b/rh);
c_theta1t=a-(b/rt);
K1=cx^2+(2*(a^2)*((b/(a*rm))+log(rm)));
cx1h=sqrt(K1-(2*(a^2)*((b/(a*rh))+log(rh))));
cx1t=sqrt(K1-(2*(a^2)*((b/(a*rt))+log(rt))));

c_theta2h=a+(b/rh);
c_theta2t=a+(b/rt);
K2=cx^2+(2*(a^2)*(log(rm)-(b/(a*rm))));
cx2h=sqrt(K2-(2*(a^2)*(log(rh)-(b/(a*rh)))));
cx2t=sqrt(K2-(2*(a^2)*(log(rt)-(b/(a*rt)))));
disp("(a) the rotor blade air angles are")
// for hub section
alpha1h=atand(c_theta1h/cx1h);
alpha2h=atand(c_theta2h/cx2h);
disp("for hub section")
beta1h=atand((uh/cx1h)-tand(alpha1h));
beta2h=atand((uh/cx2h)-tand(alpha2h));
disp("degree",beta1h,"beta1h=")
disp("degree",beta2h,"beta2h=")

// for tip section
alpha1t=atand(c_theta1t/cx1t);
alpha2t=atand(c_theta2t/cx2t);
disp("for tip section")
beta1t=atand((ut/cx1t)-tand(alpha1t));
beta2t=atand((ut/cx2t)-tand(alpha2t));
disp("degree",beta1t,"beta1t= ")
disp("degree",beta2t,"beta2t= ")

// part(b) specific work
w=2*omega*b;
disp("kJ/kg",w*1e-3,"(b)specific work is")

// part(c) the loading coefficients
disp("(c)the loading coefficients are")
shi_h=w/(uh^2);
disp(shi_h,"shi_h=")
shi_m=w/(um^2);
disp(shi_m,"shi_m=")
shi_t=w/(ut^2);
disp(shi_t,"shi_t=")

// part(c) degrees of reaction
disp("(d)Degrees of reaction are")
Rh=((cx1h^2)*(secd(beta1h)^2)-(cx2h^2)*(secd(beta2h)^2))*100/(2*w);
Rt=((cx1t^2)*(secd(beta1t)^2)-(cx2t^2)*(secd(beta2t)^2))*100/(2*w);
disp("%",Rh,"Rh=")
disp("%",Rm*100,"Rm=")
disp("%",Rt,"Rt=")
disp("Comment: book contains wrong calculation for Rt value")

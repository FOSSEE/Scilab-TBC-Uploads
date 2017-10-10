//Example 14-12
clc;clear;
// Properties
rho_w=998;// kg/m^3
//Given values
r_2=2.50;// m
r_1=1.77;// m
b_2=0.914; // m
b_1=2.62; // m
n=120; // rpm
omega=12.57;// rad/s
alpha_2=33;// degree
v=599;// m^3/s
g=9.81;// m/s^2

//Calculation
//(a)
V_2n=(v/(2*%pi*r_2*b_2));//The normal component of velocity at the inlet in m/s
V_2t=V_2n*tand(alpha_2);//The tangential velocity component at the inlet in m/s
beta_2=atand(V_2n/((omega*r_2)-(V_2t)));
disp('(a) alpha=10 degree')
printf('The runner leading edge angle at runner inlet, beta_2=%0.1f degree\n',beta_2);
//Equations 1 through 3 are repeated for the runner outlet, with the following results:
V_1n=(v/(2*%pi*r_1*b_1));//
alpha_1=10;// degree
V_1t=V_1n*tand(alpha_1);
beta_1=atand(V_1n/((omega*r_1)-(V_1t)));
printf(' The runner blade trailing edge angle , beta_1=%0.1f degree\n',beta_1);
W_shaft=(rho_w*omega*v*((r_2*V_2t)-((r_1*V_1t))))/10^6;
W_shaft_hp=(W_shaft)*1341.02209;
printf(' The shaft output power,W_shaft =%0.2e hp\n',W_shaft_hp);
// Assume Efficiency of turbine=100%
// bhp=W_shaft
H_1=(W_shaft)*10^6/(rho_w*g*v);// m
printf(' The required net head,H =%0.1f m\n',H_1);

//
disp('(b) alpha=0 degree')
alpha_11=0;// degree
V_11t=V_1n*tand(alpha_11);
beta_11=atand(V_1n/((omega*r_1)-(V_11t)));// degree
printf(' The runner blade trailing edge angle , beta_1=%0.1f degree\n',beta_11);
W_shaft1=(rho_w*omega*v*((r_2*V_2t)-((r_1*V_11t))))/10^6;// MW
W_shaft1_hp=(W_shaft1)*1341.02209;// hp
printf(' The shaft output power,W_shaft =%0.2e hp\n',W_shaft1_hp);
H_2=(W_shaft1)*10^6/(rho_w*g*v);// m
printf(' The required net head,H =%0.1f m\n',H_2);

//
disp('(c) alpha=-10 degree')
alpha_12=-10;// degree
V_12t=V_1n*tand(alpha_12);
beta_12=atand(V_1n/((omega*r_1)-(V_12t)));
printf(' The runner blade trailing edge angle , beta_1=%0.1f degree\n',beta_12);
W_shaft12=(rho_w*omega*v*((r_2*V_2t)-((r_1*V_12t))))/10^6;// MW
W_shaft12_hp=(W_shaft12)*1341.02209;// hp
printf(' The shaft output power,W_shaft =%0.2e hp\n',W_shaft12_hp);
H_3=(W_shaft12)*10^6/(rho_w*g*v);// m
printf(' The required net head,H =%0.1f m\n',H_3);
alpha=[33 0 -10];
bhp=[W_shaft W_shaft1 W_shaft12];
H=[H_1 H_2 H_3];
plot(alpha,H,'r');
legend('H');
xlabel('alpha,degrees');
ylabel('H,m');
set(gca(),"data_bounds",matrix([-30,30,0,100],2,-1));
a = gca(); 
a.y_location = "left"; 
a.filled = "on"; 
a.axes_visible = ["on","on","on"]; 
a.font_size = 1; 
b = newaxes(); 
b.y_location = "right"; 
b.filled = "off"; 
b.axes_visible = ["off","on","on"]; 
b.axes_bounds = a.axes_bounds; 
b.y_label.text = "bhp,MW"; 
b.font_size = a.font_size
plot(alpha,bhp,'g');
legend(['bhp'],"in_upper_left");
set(gca(),"data_bounds",matrix([-30,30,0,700],2,-1)); 

// scilab Code Exa 18.40 Calculation for the Francis turbine

// part(a) determining the speed, specific speed and power for the model
Qm=0.148; // discharge in m3/s
N=910; // Speed in RPM
Hm=25; // net head in m
n=0.9; // efficiency
omega=%pi*2*N/60;
NS=omega*sqrt(Qm)*(Hm^(-3/4))*0.1804;
disp(NS,"(a)the specific speed of turbine is")
Nu=N/(sqrt(Hm));
disp("rpm",Nu,"unit speed for the model is")
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
Pm=rho*g*Qm*Hm;
disp("kW",Pm*1e-3,"the power for the model is")

// part(b)determining the speed, flow rate and power for the prototype
Hp=250; // head for prototype
Dp_m=6; // Dp_m=Dp/Dm
Qp=sqrt(Hp/Hm)*Qm*(Dp_m^2);
disp("m3/s",Qp,"(b)the flow rate for prototype is")
Pp=rho*g*Qp*Hp*n;
disp("MW",Pp*1e-6,"the power for the prototype is")
omega_p=NS*(Hp^(3/4))/(0.1804*sqrt(Qp));
Np=omega_p*60/(2*%pi);
disp("rpm",Np,"speed for the prototype is")

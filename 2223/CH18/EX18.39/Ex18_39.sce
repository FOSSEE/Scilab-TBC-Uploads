// scilab Code Exa 18.39 Calculation for the Pelton Wheel

Nm=102; // Speed for the model in RPM
Hm=30; // net head for the model in m
n_m=1; // Assuming efficiency
Qm=0.345; // discharge in m3/s
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
omega_m=%pi*2*Nm/60;
Pm=n_m*rho*g*Qm*Hm;
NS=omega_m*sqrt(Pm)*(Hm^(-5/4))/549.016;
disp(NS,"the specific speed of turbine is")

// determining the speed, flow rate and power for the prototype
Hp=1500; // head for prototype
Pp=((Hp/Hm)^(3/2))*Pm;
disp("MW",Pp*1e-6,"the power for the prototype is")
omega_p=NS*549.016*(Hp^(5/4))/(sqrt(Pp));
Np=omega_p*60/(2*%pi);
disp("rpm",Np,"speed for the prototype is")
Qp=sqrt(Hp/Hm)*Qm;
disp("m3/s",Qp,"the flow rate for prototype is")

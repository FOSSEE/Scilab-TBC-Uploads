// scilab Code Exa 18.38 Kaplan turbine 70 rpm

//part(a)flow rate and specific speed 
P=8e3; // Gas Power Output in kW
N=70; // Speed in RPM
H=10; // net head in m
n_m=0.85; // efficiency
omega=%pi*2*N/60;
NS=omega*sqrt(P*10e2)*(H^(-5/4))/549.016;
disp(NS,"(a)the specific speed of turbine is")
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
Q=P*1e3/(n_m*rho*g*H);
disp("m3/s",Q,"and the flow rate is")

// part(b) determining the speed, flow rate and power for the model
Dp_m=12; // Dp_m=Dp/Dm
Np=N; // Speed for prototype
Hm=3; // head of the model
Hp=H; // head for prototype
Nm=Np*Dp_m*sqrt(Hm/Hp);
disp("rpm",Nm,"(b)speed for the model is")
Dm_p=1/Dp_m;
Qp=Q;
Qm=(Dm_p^2)*sqrt(Hm/Hp)*Qp;
disp("m3/s",Qm,"the flow rate for model is")
Pm=n_m*rho*g*Qm*Hm;
disp("kW",Pm*1e-3,"the power for the model is")

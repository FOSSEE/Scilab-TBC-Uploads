// scilab Code Exa 18.42 Calculation for Tidal Power Plant

T=50e6; // capacity of basin in cubic meters of sea water
N=60; // Speed for the model in RPM
NS=3; //specific speed
H=9.8; // net head for the model in m
n_o=0.78; // Assuming efficiency
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
n(1)=5; // number of turbines
n(2)=10;
omega=%pi*2*N/60;

P=(NS^2)*(H^(5/2))*(549.016^2)/(omega^2);
disp("MW",P*1e-6,"(a)the power for the turbines is")
Q=P/(n_o*rho*g*H);  // discharge in m3/s
disp("m3/s",Q,"(b)the discharge rate for the turbines is")
disp("(c)")
for i=1:2
    disp(n(i),"when number of turbines are:")
    t=T/(n(i)*Q*3600);
disp("hours",t,"duration of operation is")
end

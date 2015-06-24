// scilab Code Exa 18.41 Calculation for the Pelton Wheel
NS=0.1; //specific speed
H1=1000; // net head for the model in m
Q1=1; // discharge in m3/s
omega1=NS*(H1^(3/4))/(sqrt(Q1)*0.1804);
N1=omega1*60/(2*%pi);
disp("rpm",N1,"speed of the rotation is")
rho=1000; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
P1=rho*g*Q1*H1;

// determining the speed, flow rate and power for the prototype
H2=100; // head for prototype
N2=N1*sqrt(H2/H1);
disp("rpm",N2,"speed for the prototype is")
Q2=sqrt(H2/H1)*Q1;
disp("m3/s",Q2,"the discharge for the prototype is")
P2=((H2/H1)^(3/2))*P1;
disp("MW",P2*1e-6,"the power for the prototype is")

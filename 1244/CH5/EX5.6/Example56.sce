


// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 5 Example # 5.6 ");

//''RPM of shaft''
N = 3;
//''Angular velocity, omega=2*pi*N/60 in rad/s''
omega = 0.31;
//''Ambient temp in degree C''
Ta = 20;
//''Ambient temp in degree K''
TaK = Ta+273;
//''Shaft temp in degree C''
Ts = 100;
//''Shaft temp in degree K''
TsK = Ts+273;
//''Film temperature = (Shaft Temperature + Ambient Temperature)/2''
//''Film temp in degree K''
TfK = (TsK+TaK)/2;
//''diameter of shaft in m''
d = 0.2;
//''Value of kinematic viscosity at this film temp in m2/s''
v = 0.0000194;
//''Value of reynolds number''
Re = (((%pi*d)*d)*omega)/v;


//''acceleration due to gravity in m/s2''
g = 9.81;
//''temperature diff. between body and ambient in degree K''
deltaT = TsK-TaK;
//''Value of Prandtl number at this film temp''
Pr = 0.71;
//''Value of coefficient of expansion at this film temp in degree K inverse''
B = 1/TfK;
//''Therefore using Rayleigh number = ((Pr*g*B*deltaT*d^3)/v^2)''
//Rayleigh number
Ra = ((((Pr*g)*B)*deltaT)*(d^3))/(v^2);

//''From Eq. 5.35 on Page 322, we get''
//Nusselt number
Nu = 49.2;
//''Value of thermal conductivity at this film temp in W/m-K''
k = 0.0279;
//''Using Nu = hc*d/k, we get in W/m2-K''
hc = (Nu*k)/d;
//''let the length exposed to heat transfer is l=1m''
//''then area in m2 = pi*d*l''
a = %pi*d;
disp("The rate of heat loss in air in W is given by hc*(a)*deltaT")
//heat loss in air in W
q = (hc*deltaT)*a

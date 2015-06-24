

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 5 Example # 5.5 ");

//''Top surface temp in degree C''
Tt = 20;
//''Body temp in degree K''
TtK = Tt+273;
//''Bottom temp in degree C''
Tb = 100;
//''Ambient temp in degree K''
TbK = Tb+273;
//''Average temp = (Bottom Temperature + top Temperature)/2''
//''average temp in degree K''
T = (TbK+TtK)/2;
//''Value of coefficient of expansion at this temp in degree K inverse''
B = 0.000518;
//''Value of Prandtl number at this temp''
Pr = 3.02;
//''Value of kinematic viscosity at this temp in m2/s''
v = 0.000000478;
//''acceleration due to gravity in m/s2''
g = 9.8;
//''temperature diff. between body and ambient in degree K''
deltaT = TbK-TtK;
//''depth of water in m''
h = 0.08;
//''Therefore using Rayleigh number = ((Pr*g*B*deltaT*h^3)/v^2)''
Ra = ((((Pr*g)*B)*deltaT)*(h^3))/(v^2);

//''From Eq. (5.30b) on page 318, we find''
//Nusselt number
Nu = 79.3;
//''Value of thermal conductivity at this film temp in W/m-K''
k = 0.657;
//''Using Nu = hc*d/k, we get heat transfer coefficient in W/m2-K''
hc = (Nu*k)/h;
//''diameter of pan in m''
d = 0.15;
//''area = pi*d*d/4''
a = ((%pi*d)*d)/4;
disp("The rate of heat loss in W is given by hc*(A)*deltaT")
//heat loss in W
q = (hc*deltaT)*a

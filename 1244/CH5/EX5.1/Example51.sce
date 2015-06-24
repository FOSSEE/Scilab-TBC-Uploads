

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 5 Example # 5.1 ");

// ''Body temp in degree C''
Tb = 127;
//''Body temp in degree K''
TbK = Tb+273;
//''Ambient temp in degree C''
Ta = 27;
//''Ambient temp in degree K''
TaK = Ta+273;
//''Film temperature = (Body Temperature + Ambient Temperature)/2''
//''Film temp in degree K''
TfK = (TbK+TaK)/2;
//''Value of coefficient of expansion at this film temp in degree K inverse''
B = 1/TfK;
//''Value of Prandtl number at this film temp''
Pr = 0.71;
//''Value of kinematic viscosity at this film temp in m2/s''
v = 0.0000212;
//''Value of thermal conductivity at this film temp in W/m-K''
k = 0.0291;
//''acceleration due to gravity in m/s2''
g = 9.81;
//''temperature diff. between body and ambient in degree K''
deltaT = TbK-TaK;
//''diameter of heater wire in m''
d = 0.001;
//''Therefore using Rayleigh number = ((Pr*g*B*deltaT*d^3)/v^2)''
Ra = ((((Pr*g)*B)*deltaT)*(d^3))/(v^2);

//''From Fig. 5.3 on Page 303, we get''
//''log(Nu) = 0.12, where Nu is nusselt number, therefore''
Nu = 1.32;
//''Using Nu = hc*d/k, we get heat transfer coefficient in W/m2-K''
hc = (Nu*k)/d;
disp("The rate of heat loss per meter length in air in W/m is given by hc*(A/l)*deltaT")
//heat loss per meter length in air in W/m
q = ((hc*deltaT)*%pi)*d

//''For Co2, we evaluate the properties at film temperature''
//''Following are the values of dimensionless numbers so obtained''
//''Rayleigh number, Ra=16.90''
//''Nusselt number, Nu=1.62''
//''Using Nu = hc*d/k, we get''
//''hc = 33.2 W/m2-K''
disp("The rate of heat loss per meter length in CO2 is given by hc*(A/l)*deltaT")
disp("q = 10.4 W/m")

disp(" Discussion - For same area and temperature difference: ")
disp(" Heat transfer by convection will be more, if heat transfer coeff. is high")

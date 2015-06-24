

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 5 Example # 5.3 ")

//''Surface temp in degree C''
TsC = 227;
//''Body temp in degree K'')
Ts = TsC+273;
//''Ambient temp in degree C''
TinfinityC = 27;
//''Ambient temp in degree K''
Tinfinity = TinfinityC+273;
//''Film temperature = (Surface Temperature + Ambient Temperature)/2''
//''Film temp in degree K'')
Tf = (Ts+Tinfinity)/2;
//''For a square plate, Height and width of plate in m''
L = 1;
b = 1;
//''For a square plate, characteristic length = surface area/parameter in m''
L_bar = (L*L)/(4*L);
//''Value of coefficient of expansion at this film temp in degree K inverse''
B = 1/Tf;
//''Value of Prandtl number at this film temp''
Pr = 0.71;
//''Value of thermal conductivity at this film temp in W/m-K''
k = 0.032;
//''Value of kinematic viscosity at this film temp in m2/s''
v = 0.000027;
//''acceleration due to gravity in m/s2''
g = 9.81;
//''temperature diff. between body and ambient in degree K''
deltaT = Ts-Tinfinity;
//''Therefore using Rayleigh number = ((Pr*g*B*deltaT*(L_bar)^3)/v^2)''
//Rayleigh number
Ra = ((((Pr*g)*B)*deltaT)*(L_bar^3))/(v^2);


//''From eq. 5.17 on page 311, we have nusselt number for bottom plate as 0.27*Pr^0.25''
NuBottom = 25.2;
//''From eq. 5.16 on page 311, we have nusselt number for top plate as 0.27*Pr^0.25''
NuTop = 63.4;
//''And therefore corresponding heat transfer coeeficients are in W/m2-K''
hcBottom = (NuBottom*k)/L_bar; //heat transfer coeeficients are in W/m2-K at bottom  
hcTop = (NuTop*k)/L_bar; //heat transfer coeeficients are in W/m2-K at top


disp("Therefore total heat transfer in W is given by A*(hcTop+hcBottom)*(deltaT)")
//heat transfer in W
q = ((L*b)*(hcTop+hcBottom))*deltaT

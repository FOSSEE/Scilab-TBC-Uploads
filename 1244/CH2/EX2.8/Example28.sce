

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.8 ")

//Diameter of pipe in m
D = 0.1;
//Depth under which it is sunk in m
z = 0.6;
//Temperature of pipe in degree C
Tpipe = 100;
//Temperature of soil in degree C
Tsoil = 20;
//Thermal conductivity in W/mK
k = 0.4;


//From table 2.2 on page 112, calculating shape factor
//Shape factor
S = (2*%pi)/acosh((2*z)/D);
disp(" rate of heat loss per meter length in W/m is")
//rate of heat loss per meter length in W/m
q = (k*S)*(Tpipe-Tsoil)

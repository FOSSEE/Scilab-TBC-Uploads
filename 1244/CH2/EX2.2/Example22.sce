

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.2 ")

disp("Case of Uninsualted pipe")
//Calculating resistance to heat flow at internal surface

//Internal radius in m
ri = 0.05;
//Heat transfer coefficient at inner surface for steam condensing in W/m2K
hci = 10000;
//Resistance in mK/W
R1 = 1/(((2*%pi)*ri)*hci);

//Calculating resistance to heat flow at external surface

//External radius in m
ro = 0.06;
//Heat transfer coefficient at outer surface in W/m2K
hco = 15;
//Resistance in mK/W
R3 = 1/(((2*%pi)*ro)*hco);

//Calcualting resistance to heat flow due to pipe

//Thermal conductivity of pipe in W/mK
kpipe = 400;
//Resistance in mK/W
R2 = log(ro/ri)/((2*%pi)*kpipe);

//Temperatures of steam(pipe) and surrounding(air) in degree C
Ts = 110;
Tinfinity = 30;

disp("Heat loss from uninsulated pipe in W/m is therefore")
//Heat loss from uninsulated pipe in W/m 
q = (Ts-Tinfinity)/(R1+R2+R3)


disp("Case of insulated pipe")
//Calculating additional resistance between outer radius and new outer
//radius

//Thermal conductivity of insulation in W/mK
k = 0.2;
//New outer radius in m
r3 = 0.11;
//Resistance in mK/W
R4 = log(r3/ro)/((2*%pi)*k);

//Calculating new outer resistance
R0 = 1/(((2*%pi)*r3)*hco);


disp("Heat loss from insulated pipe in W/m is therefore")
//Heat loss from insulated pipe in W/m
q = (Ts-Tinfinity)/(R1+R2+R4+R0)

clc;funcprot(0)//EXAMPLE 7.8

//Initializing the variables
IP1 = 32;...............//Indicated power output in kW
etamech=80;............//Mechanical efficiency at sea level
p1=1.013;.............//initial pressure at sea level in bar
tk1 = 308;...............//Initial temperature at sea level in Kelvin
tk2 = 278;..................//temperature atop the hill in Kelvin
rhoHg=13600;..............//Density of mercury in kg/m^3
h=2000;.....................//Hill altitude 
g = 9.81;................//Acceleration due to gravity
delp = 10;..............//drop of mercury in mm Hg per every 100 m climb
//calculations

disp("There is no change in volumetric efficiency due to inlet and exhaust pressure change")
disp ("For inlet temperature change")
x = sqrt (tk2/tk1);................//for inlet temperature change
//x is the ratio of the efficiencies at the beginning and on hill top
disp ((1-x)*100,"Percentage decrease in %:")
dp = rhoHg*g*((delp/1000)*(h/100))*(10^(-5));........//Drop in pressure at hill station
p2=p1-dp;
IP_1 = p1/tk1;
IP_2 = (x*p2)/tk2;
k = IP_2/IP_1;..............//Ratio of indicative power output during initial and final conditions
IP2 = (IP1 * k)/(etamech/100);
//Since the engine speed is the same at two places, the friction and hence mechanical efficiency remains unchanged
BP2 = IP2*(etamech/100);
disp(BP2,"Brake power of the engine on the hill station in kW :")


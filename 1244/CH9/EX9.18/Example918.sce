

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.18 ")

//Emissivity
epsilon = 0.8;
//Stefan's constant
sigma = 0.1714;
//Temperature of walls in degree F
Twall = 440;
//Temperature indicated ny thermocouple in degree F
Tt = 940;
//Heat transfer coefficient in Btu/h ft2 F
h = 25;

//The temperature of the thermocouple is below the gas temperature because the couple loses heat by radiation to the wall.

//Under steady-state conditions the rate of heat flow by radiation from the thermocouple junction to the wall equals the rate of heat flow by convection from the gas to the couple.

//Using this heat balance, q/A in Btu/h ft2
q = (epsilon*sigma)*(((Tt+460)/100)^4-((Twall+460)/100)^4);

disp("True gas temperature in degree F")
//True gas temperature in degree F
Tg = Tt+q/h

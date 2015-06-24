

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.19 ")

//Emissivity of thermocouple
epsilonT = 0.8;
//Emissivity of shield
epsilonS = 0.3;
//Stefan''s constant
sigma = 0.1714;
//Temperature of walls in degree F
Tw = 440;
//Temperature indicated ny thermocouple in degree F
Tt = 940;
//Heat transfer coefficient of thermocouple in Btu/h ft2 F
hrt = 25;
//Heat transfer coefficient of shield in Btu/h ft2 F
hrs = 20;

//Area for thermocouple be unity ft2
At = 1;
//Corresponding area of shield in ft2
As = 4;//Inside dia=4*dia of thermocouple

//From Eq. (9.76)
//View factors Fts and Fsw
Fts = 1/((1-epsilonT)/(At*epsilonT)+1/At+(1-epsilonS)/(As*epsilonS));
Fsw = As*epsilonS;

//Assuming a shield temperature of 900°F, we have, according to Eq. (9.118)
//Temperature in degree F
Ts = 923;

//Coeffcients for heat balance are as following
//A parameter Btu/h-F
A = 9.85;//A=hrt*At
//B parameter Btu/h-F
B = 13.7;//B=hrs*As

//Using heat balance
disp("Correct temperature of gas in degree F")
//Correct temperature of gas in degree F
Tg = Ts+(B*(Ts-Tw)-A*(Tt-Ts))/((hrs*2)*As)

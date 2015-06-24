//circuit parameters 
//voltage sources 
E1 = 120; 
E2 = 65;
//resistances 
R1 = 40;
R2 = 11; 
R3 = 60;

I = (E1/R1) + (E2/R3); //norton's current source 
Req = R1*R3/(R1 + R3); //equivalent resistance 

I2 = I*Req/(Req + R2); //current flowing through R2

disp(I2,"current flowing through R2 = ")
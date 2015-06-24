//mesh equations:
//60*I1 - 20*I2 = 20
//-20*I1 + 80*I2 = -65

R = [60 -20;-20 80];
E = [120;-65];
I = inv(R)*E;
I1 = I(1,:); //current flowing in first mesh 
I2 = I(2,:); //current flowing in second mesh

Ibd = I1 - I2; //current flowing through branch bd
Iab = I1; //current flowing through branch ab
Icb = -I2; //current flowing through branch cb

disp(Ibd, "current flowing through branch bd = ")
disp(Iab,"current flowing through branch ab = ")
disp(Icb,"current flowing through branch cb = ")

clc; funcprot(0);
//Example 25.9

//Initializing the variables
Ws = 0.45;
Ks = 3.2;
H = 152;
h = 0;
Hatm = 10.3;
Pv = 350;     //vapour pressure
g = 9.81;
rho = 1000;
  
//Calculations
Ht1 = H*(Ws/Ks)^(4/3)
Hvap = Pv/(rho*g);
Z = Hatm -h -Hvap -Ht1;
disp(Z,"Elevation of pump (m):"); 
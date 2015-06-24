//clear//
clear;
clc;

//Example 22.1
//Given
Dp = 1; //[in.]
vdot = 25000; //[ft^3/h]
T = 68; //[F]
P = 1; //[atm]
ya = 0.02;
Mair = 29;
Mg = 17;
//Solution
//The average molecular weiht of the entering gas 
M = (1-ya)*Mair+ya*Mg;
rho_y = M*492/(359*(460+68)); //[lb/ft^3]

//(a)
//Using Fig. 22.5, when Gy =Gx;
Gy = 0.472; //[lb/ft^2-s]
Gx = Gy; //[lb/ft^2-h]
des_value = Gy/2; //[lb/ft^2-h]
mdot = vdot*rho_y/3600; //[lb/s]
//Cross-sectional area of the tower
S = mdot/des_value //[ft^2] 
//the diameter of the tower is
Dtower = sqrt(4*S/%pi); //[ft]
disp('ft',Dtower,'The tower diameter is');

//(b)
h = 20; //[ft] 
//Using Fig 22.4, the pressure drop for 
Gy = 850; //[lb/f^2-h]
Gx = Gy;
delta_P = 0.35; //[in.] (H2O/ft)
//The total pressure drop
Pt = delta_P*h; //[in.] H2O
disp('in. H2O' ,Pt,'The pressure drop would be'); 

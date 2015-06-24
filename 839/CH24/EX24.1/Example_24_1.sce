//clear//
clear;
clc;

//Example 24.1
//Given
Twb = 80; //[F]
Tdb = 120; //[F]
v = 3.5; //[ft/s]
rho = 120; //[lb/ft^3]
Xe = 0;
Xc = 0.09;
lambda = 1049; //[Btu/lb]
M = 29;
B = 24; //[in.]
D = 2; //[in.]
Dc = 2; //[ft]
//Solution
//(a)
//mass velocity
G = v*M*492*3600/(359*(460+120)); //[lb/ft^2-h]
//the coefficent, by Eq.(24.13), in fps units, is
h = 0.01*G^0.2/2^0.2; //[Btu/ft^2-h-F]
//Substituting in Eq.(21.15) gives 
Rc = 1.94*(Tdb-Twb)/(lambda); //[lb/ft^2-h]
disp('lb/ft^2-h',Rc,'Drying rate during the constant period is')

//(b)
//Since drying is from both faces, area
A = Dc*(B/12)^2; //[ft^2]
//The rate of drying  
mvdot = Rc*A; //[lb/h] 
//Volume of the cake
Vc = (B/12)^2*D/12; //[ft^3]
//mass of the bone-dry solid is
mdot_bd = rho*Vc; //[lb]
//The quantity of moisture to be vaporized is
X2 = 0.20;
X1 = 0.10;
Q = mdot_bd*(X2-X1); //[lb]
//Drying time
tT = Q/mvdot; //[h]
disp('h',tT,'drying time')

//clear//
clear;
clc;

//Example 18.6
//Given
xF = 0.40;
P = 1; //[atm]
D = 5800; //[kg/h]
R = 3.5;
LbyV = R/(1+R);
//Solution
//Physical properties of methanol
M = 32;
Tnb = 65; //[C]
rho_v = M*273/(22.4*338); //[kg/^3]
rho_l_0 = 810; //[kg/m^3], At 0C, from Perry, Chemical Engineers' Handbook 
rho_l_20 = 792; //[kg/m^3], At 20C, from Perry, Chemical Engineers' Handbook 
rho_l = 750; //[kg/m^3], At 65C
sigma = 19; //[dyn/cm], from Lange's Handbook of Chemistry
//(a)
//Vapor velocity and column diameter
//Using Fig. 18.28, the abscissa is
abscissa = LbyV*(rho_v/rho_l)^(1/2);
//for 18-in. plate spacing
Kv = 0.29;
//Allowable vapor velocity
uc = Kv*((rho_l-rho_v)/rho_v)^(1/2)*(sigma/20)^(0.2); //[ft/s]
//Vapor flow rate
V = D*(R+1)/(3600*rho_v); //[m^3/s]
//Cross setional area of the column
Bubbling_area = V/2.23; //[m^2]
//If the bubble area is 0.7 of the total column area
Column_area = Bubbling_area/0.7; //[m^2]
//Column diameter
Dc = sqrt(4*Column_area/%pi); //[m]
disp('respectively','m',Dc,'and','ft/s',uc,'the allowable velocity and colmn diameter are')

//(b)
//Pressure drop:
//Area of one unit of three holes on a trangular 3/4-in. pitch is
//1/2*3/4*(3/4*sqrt(3/2)) in.^2. The hole area in this section (half a hole)is
//1/2*%pi/4*(1/4)^2 in.^2. Thus the hole area is %pi/128*64/9*sqrt(3), or 10.08 percent
//of the bubbling area.
//Vapor velocity through holes:
uo = 2.23/0.1008; //[m/s]
//Using Eq.(18.58),
//From Fig. 18.27
Co = 0.73;
hd = 51.0*uo^2*rho_v/(Co^2*rho_l); //[mm methanol]
//Head of liquid on plate:
//Weir height
hw = 2*25.4; //[mm]
//Height of the liquid above weir:
//Assuming the downcomer area is 15 percent of the column 
//area on each side of th column. From Perry, the chord
//length for sucha segmental downcomer is 1.62 times the radius
//of the colmn, so
Lw = 1.62*2.23/2; //[m]
//Liqiud Flow rate:
qL = D*(R+1)/(rho_l*60); //[m^3/min]
//From Eq.(18.60)
how = 43.4*(qL/Lw)^(2/3) //[mm]
//From Eq.(18.59), with 
beeta = 0.6;
hI = beeta*(hw+how); //[mm]
//Total height of liquid, from Eq.(18.62)
hT = hd+hI; //[mm]
disp('mm methanol',hT,'pressure drop per plate is')

//(c)
//Froth height in th downcomer :
//Using Eq.(18.62).,Estimating 
hf_L = 10; //[mm methanol]
//Then,
Zc = (2*hI)+hd+hf_L; //[mm]
//from Eq.(18.63)
Z = Zc/0.5; //[mm]
disp('mm methanol',Z,'Froth height in the downcomer is')

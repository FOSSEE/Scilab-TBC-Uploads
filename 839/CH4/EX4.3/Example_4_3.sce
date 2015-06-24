//clear//
clear;
clc;

//Example 4.3
rho  = 998; // [kg/m^3]
Da = 50; //[mm]
Db = 20; //[mm]
pa  = 100; //[N/m^2]

//(a)
Va_bar = 1.0; //[m/s]
Vb_bar = Va_bar*(Da/Db)^2 //[m/s]
//Using Eq.(4.29)
//Za = Zb, hf = 0
pb  = pa-rho*(Vb_bar^2-Va_bar^2)/(2*1000) //[kN/m^2]
disp('kN/m^2',pb,'pb =')

//(b)
// Combining Eqs.(4.14) & (4.15)
//For x direction, 
//since Fg = 0, we get Eq.(4.30)
theta = %pi/4;
Va_xbar = Va_bar;
Sa = (%pi/4)*(Da/1000)^2; //[m^2]
Sax = Sa;
//From FIg 4.5
Vb_xbar = Vb_bar*cos(theta);//[m/s]
Sb = %pi/4*(Db/1000)^2; //[m^2]
Sbx = Sb*sin(theta);// [m^2]
//Using Eq.(4.6)
mdot = Va_bar*rho*Sa; //[kg/s]
//Substituting in Eq.(4.30)
//Solving for Fw,x
beta_a = 1; beta_b = 1;
Fw_x  = mdot*(beta_b*Vb_xbar-beta_a*Va_xbar)-Sax*pa*1000+Sbx*pb*1000 //[N]

//For y direction,
//Va_ybar = 0, Say = 0
Vb_ybar = Vb_bar*sin(theta); //[m/s] 
Sby = Sb*cos(theta); //[m^2]
Va_ybar = 0; //[m/s]
Say = 0;// [m/s]

Fw_y  = mdot*(beta_b*Vb_ybar-beta_a*Va_ybar)-Say*pa*1000+Sby*pb*1000 //[N]

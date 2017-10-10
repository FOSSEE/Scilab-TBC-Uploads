///Chapter No 7 Fluid Mechanics
///Example 7.16 Page No:127
///Find continuity discharge equation
///input data
clc;
clear;
///refer figure 11
ZA=2;                   //water flows section A-A in m 
DA=0.3;                 //datum pipe diameter at section A-A in m
PA=550*10^3;           //pressure in kPa
VA=6;                   //flow velocity in m/s
ZB=18;                  //water flows at section B-B in m
DB=0.15;                //datum pipe diameter at section B-B in m
pi1=3.14;                //constant
rho=1000;               //constant
g1=9.81;                 //constant
Aa=(pi1/4)*(DA)^2;
Ab=(pi1/4)*(DB)^2;
pi1=3.14;

///calculation
VB=((Aa*VA)/Ab);         //continuity discharge equation in m/s
//bernoulli's equation Kpa
//(PA/rho*g)+(VA**2/2*g)+ZA=(PB/rho*g)+(VB**2/2*g)+ZB 
PB=(((PA/(rho*g1))+(VA**2/(2*g1))+ZA)-((VB**2/(2*g1))+ZB))*(rho*g1);


///output
printf('continuity discharge equation= %f m/s \n',VB);
printf('bernoullis equation= %f pa \n ',PB);

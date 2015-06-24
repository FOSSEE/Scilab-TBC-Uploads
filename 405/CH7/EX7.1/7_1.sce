clear;
clc;
printf("\t\t\tExample Number 7.1\n\n\n");
// constant heat flux from vertical plate  
// Example 7.1 (page no.-330-331) 
// solution

q_w = 800;// [W/square meter] radiant energy flux
H = 3.5;// [m] height of metal plate surface
W = 2;// [m] width of metal plate
Ta = 30;// [degree celsius] surrounding air temperature 
// we treat this problem as one with constant heat flux on the surface since we do not know the surface temperature, we must make an estimate for determining Tf and the air properties.
// an approximate value of h for free convection problems is 
h = 10;// [W/square meter degree celsius]
dT = q_w/h;// [degree celsius]
// then
Tf = (dT/2)+Ta;// [degree celsius] approximately 
// at Tf the properties of air are 
v = 2.005*10^(-5);// [square meter/s]
k = 0.0295;// [W/m degree celsius]
Pr = 0.7;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
// from equation (7-30), with
x = 3.5;// [m]
g = 9.8;// [square meter/s] acceleration due to gravity 
Gr_x = (g*Beta*q_w*x^(4))/(k*v^(2));
// we may therefore use equation (7-32) to evaluate h_x
h_x = (k*0.17*(Gr_x*Pr)^(1/4))/x;// [W/square meter degree celsius]
// in the turbulent heat transfer governed by equation (7-32), we note that
// Nu_x = h*x/k ~ (Gr_x)^(1/4) ~ x
// or h_x doest noy vary with x, and we may take this as the average value. the value of h
h = 5.41;// [W/square meter degree celsius]
// is less than the approximate value we used to estimate Tf, recalculating dT, we obtain
dT1 = q_w/h_x;// [degree celsius]
// our new film temperature would be
Tf1 = Ta+dT1/2;// [degree celsius]
// at Tf the properties of air are
v1 = 2.354*10^(-5);// [square meter/s]
k1 = 0.0320;// [W/m degree celsius]
Pr1 = 0.695;// prandtl number
Beta1 = 1/(Tf1+273);// [K^(-1)]
// then 
Gr_x1 = (g*Beta1*q_w*x^(4))/(k1*v1^(2));
// and h_x is caalculated from
h_x1 = (k1*0.17*(Gr_x1*Pr1)^(1/4))/x;// [W/square meter degree celsius]
// our new temperature difference is calculated as 
dT2 = q_w/h_x1;// [degree celsius]
// the average wall temperature is therefore
T_w_avg = dT2+Ta;// [degree celsius]
printf("the average wall temperature is therefore %f degree celsius",T_w_avg);








clc; funcprot(0);
// Initialization of Variable
AB=25145.32;//distance in m
R=6370.0e3;//radius of earth in m
ha=325.14;//elevation in m
//calculation
theta=AB*cos(3+9.0/60+40.0/3600)/R;
AB_dash=AB/sin(%pi/2+theta/2)*sin(%pi/2-theta/2-(3+9.0/60+40.0/3600)*%pi/180);
CD=AB_dash-AB_dash*ha/R;
S=CD+CD**3/24.0/R**2;
disp(S,"sea level length in m")
clear()
disp("answer varies slightly due to round off error")

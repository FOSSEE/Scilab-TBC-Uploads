
clc; funcprot(0);
// Initialization of Variable
AB=31325.14//slope distance in m
R=6370.0e3;//radius of earth
ha=1582.15;//elevation in m
h=4251.32-ha//in m
//calculation
AB_dash=AB-h**2/2/AB;
theta=2*asin(AB_dash/2/R);
AB_dash=AB-(h*sin(theta/2)+h**2/AB/2)
CD=AB_dash-AB_dash*ha/R;
S=CD+CD**3/24.0/R**2;
disp(S,"sea level length in m")
clear()

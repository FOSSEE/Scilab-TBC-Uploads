

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.3 ")

//Outer radius in m
ro = 0.02;
//Inner radius in m
ri = 0.015;
//Thermal conductivity of plastic in W/mK
k = 0.5;
//Internal convection heat transfer coefficient in W/m2K
hc1 = 300;
//Temperature of fluid in pipe in degree C
Thot = 200;
//Temperature of outside in degree C
Tcold = 30;
//External convection heat transfer coefficient in W/m2K
hc0 = 10;

disp("Overall heat transfer coefficient in W/m2K is")
//Overall heat transfer coefficient in W/m2K
U0 = 1/(ro/(ri*hc1)+(ro*log(ro/ri))/k+1/hc0)

disp("The heat loss per unit length in W/m is")
//The heat loss per unit length in W/m
q = (((U0*2)*%pi)*ro)*(Thot-Tcold)

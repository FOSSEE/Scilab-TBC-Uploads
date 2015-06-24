clc
//calc pressure diff between two tanks in a two liquid manometer
rho_water=62.3;//lbm/ft^3
SG_oil=1.1;
rho_oil=SG_oil*(rho_water);
g=32.2;//ft/s^2
h1_1=1;//ft
h1_2=2;//ft
h2_1=2;//ft
h2_2=1;//ft
p_diff=[(rho_water)*g*(h1_1-h1_2)+(rho_oil)*g*(h2_1-h2_2)]/32.2/144;//lbf/in^2
disp("The pressure difference is")
disp(p_diff)
disp("lbf/in^2")
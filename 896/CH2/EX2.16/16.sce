clc
//calc pressure diff at the mouth of the fire place
g=32.2;//ft/s^2
h=20;//ft (height of fireplace)
rho_air=0.075;//lbm/ft^3
T_air=293;//K (surrounding temperature)
T_fluegas=422;//K
p_diff=g*h*(rho_air)*[1-(T_air/T_fluegas)]/32.2/144;//lbf/in^2
disp("The pressure difference is")
disp(p_diff)
disp("lbf/in^2")
//pagenumber 35 example 16
clear
w=300;//kelvin
conduc=300;//ohm centimetre inverse
u=1800;
p=conduc/(u*1.6*10^-19);//concentration holes
n=(2.5*10^13)^2/(p);
disp("concentration of n   =   "+string((n))+"electrons per cubic centimetre");

disp("concentration of holes   =   "+string((p))+"holes per cubic centimetre");


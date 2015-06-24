clc
disp("(ii) Mass of refrigerant circulated per minute")
h2=352; //kJ/kg
h3=374; //kJ/kg
h4=221; //kJ/kg
h1=h4;
v2=0.08; //m^3/kg
rpm=500;
D=0.2;
L=0.15;
n_vol=0.85;

RE=h2-h1;
V=%pi/4*D^2*L*rpm*2*n_vol;

m=V/v2;
disp("Mass of refrigerant circulated per minute = ")
disp(m)
disp("kg/min")

disp("(iii) Cooling capacity in tonnes of refrigeration =")
cc=50*(h2-h1)*60/14000;
disp(cc)
disp("TR")

disp("(iv)COP =")
COP=(h2-h1)/(h3-h2);
disp(COP)
clc
C=0.78;
H2=0.06;
O2=0.03;

w_O2=C*8/3 + H2*8;
w_min=(w_O2-O2)*100/23; //Minimum wt. of air needed for combustion

disp("(i) Weight of dry flue gases per kg of fuel")

//For CO2
x1=0.104;
y1=44;
z1=x1*y1;

//For CO
x2=0.002;
y2=28;
z2=x2*y2;

//For N2
x3=0.816;
y3=28;
z3=x3*y3;

//For O2
x4=0.078;
y4=32;
z4=x4*y4;

z=z1+z2+z3+z4;

W_CO2=z1/z; //Weight per kg of flue gas
W_CO=z2/z; //Weight per kg of flue gas
W_N2=z3/z; //Weight per kg of flue gas
W_O2=z4/z; //Weight per kg of flue gas

amt=3/11*W_CO2 + 3/7*W_CO;

W=C/amt; //Weight of dry flue gas per kg of fuel
disp("Weight of dry flue gas per kg of fuel = ")
disp(W)
disp("kg")

disp("(ii) Weight of excess air per kg of fuel")
m_O2=W_O2-4/7*W_CO; //Weight of excess oxygen per kg of flue gas
m_excess=W*m_O2; //Weight of excess O2 per kg of fuel

w_excess=m_excess*100/23; //Weight of excess air per kg of fuel
disp("Weight of excess air per kg of fuel=")
disp(w_excess)
disp("kg")
clc

C=0.85;
H2=0.15;

//For CO2
x1=0.115;
y1=44;
z1=x1*y1;

//For CO
x2=0.012;
y2=28;
z2=x2*y2;

//For O2
x3=0.009;
y3=32;
z3=x3*y3;

//For N2
x4=0.86;
y4=28;
z4=x4*y4;

z=z1+z2+z3+z4;

W_CO2=z1/z; //Weight per kg of flue gas
W_CO=z2/z; //Weight per kg of flue gas
W_O2=z3/z; //Weight per kg of flue gas
W_N2=4/z; //Weight per kg of flue gas

W_C=3/11*W_CO2 + 3/7*W_CO; //Weight of carbon per kg of flue gas

W=C/W_C; //Weight of dry flue gas per kg of fuel

Vapour=1.35; //kg; Vapour of combustion

W_total=W+Vapour; //Total weight of gas

W_air=W_total-1; //Air supplied

ratio=W_air/1;
disp("Ratio of air to petrol =")
disp(ratio)

S_air=[C*8/3 + H2*8]*100/23; //Stoichiometric air

W_excess=W_air-S_air; //Excess air

%Excess=W_excess/S_air*100; //Percentage excess air
disp("Percentage excess air")
disp(%Excess)
disp("%")
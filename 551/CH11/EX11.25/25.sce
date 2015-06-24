clc
// C_aH_bO_cN_dS_e

a=60/12;
b=20;
c=5/16;
d=10/14;
e=5/32;

// C_5 H_20 O_0.3125 N_0.7143 S_0.1562 + x O2 + x*(79/21)N2 → p CO2 + q H2O + r SO2 + s N2
p=5;
q=20/2;
r=0.1562;
x=(2*p+q+2*r-0.3125)/2;
s=(0.7143+2*x*79/21)/2;

air=(9.92*32+x*79/21*28)/100;
disp("Stoichiometric air required =")
disp(air)
disp("kg/kg of fuel")
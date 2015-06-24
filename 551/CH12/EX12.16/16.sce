clc
h0=2905; //kJ/kg
h1=2600; //kJ/kg
h2=2430; //kJ/kg
h3=2210; //kJ/kg
h4=2000; //kJ/kg

h_f1=640.1; //kJ/kg
h_f2=467.1; //kJ/kg
h_f3=289.3; //kJ/kg
h_f4=137.8; //kJ/kg

disp("(i) Mass of bled steam")

m1=(h_f1-h_f2)/(h1-h_f1);
disp("m1=")
disp(m1)
disp("kJ/kg")

m2=((h_f2-h_f3) - (m1*(h_f1-h_f2)))/(h2-h_f2);
disp("m2=")
disp(m2)
disp("kJ/kg")

m3=((h_f3-h_f4)-(m1+m2)*(h_f2-h_f4))/(h3-h_f4);
disp("m3=")
disp(m3)
disp("kJ/kg")

W=(h0-h1) + (1-m1)*(h1-h2)+(1-m1-m2)*(h2-h3) + (1-m1-m2-m3)*(h3-h4);

Q=h0-h_f1;

disp("(ii) Thermal efficiency of the cycle=")
n_thermal=W/Q;
disp(n_thermal)


disp("(iii) Thermal efficiency of Rankine cycle =")
n_rankine=(h0-h4)/(h0-h_f4);
disp(n_rankine)


disp("(iv) Theoretical gain due to regenerative feed heating =")
gain=(n_thermal-n_rankine)/(n_thermal);
disp(gain)

disp("(v) Steam consumption with regenerative feed heating =")
S1=3600/W;
disp(S1)
disp("kg/kWh")

disp("Steam consumption without regenerative feed heating =")
S2=3600/(h0-h4);
disp(S2)
disp("kg/kWh")

disp("(vi) Quantity of steam passing through the last stage of a 50000 kW turbine with regenerative feed-heating =")
quantity1=S1*(1-m1-m2-m3)*50000;
disp(quantity1)
disp("kg/h")

disp("quantity of steam without regeneration =")
quantity2=S2*50000;
disp(quantity2)
disp("kg/h")



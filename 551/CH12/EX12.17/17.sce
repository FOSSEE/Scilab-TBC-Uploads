clc
h1=3460; //kJ/kg
h2=3460; //kJ/kg
h3=3111.5; //kJ/kg
h4=3585; //kJ/kg
h5=3207; //kJ/kg
h6=2466; //kJ/kg
h7=137.8; //kJ/kg
h8=962; //kJ/kg
h9=670.4; //kJ/kg
h10=962; //kJ/kg

p1=100; //bar
p2=95; //bar
p3=25; //bar
p4=22; //bar
p5=6; //bar
p6=0.05; //bar

n_mech=0.9;
n_gen=0.96;
n_boiler=0.9;

P=120*10^3; //kW

m1=(h10-h9)/(h3-h8);

m2=(h9-m1*h8-(1-m1)*h7)/(h5-h7);

W_IP=(1-m1-m2)*(p5-p6)*0.001*10^2;
W_HP=(p1-p5)*0.001*10^2;

W_total=(W_IP+W_HP)/n_mech;

W_indicated=(h2-h3) + (1-m1)*(h4-h5) + (1-m1-m2)*(h5-h6);

Output=(W_indicated - W_total)*n_mech*n_gen; //net electrical output

rate=P*3600/Output;

amt1=m1*rate; //Amounts of bled off, surface(high pressure) heater
disp("Amounts of bled off, surface(high pressure) heater =")
disp(amt1)
disp("kg/h")

amt2=m2*rate; //Amounts of bled off, surface(low pressure) heater
disp("Amounts of bled off, surface(low pressure) heater")
disp(amt2)
disp("kg/h")


disp("(iii) Overall thermal efficiency")
Q_boiler=(h1-h10)/n_boiler;
Q_reheater=(h4-h3)/n_boiler;

n_overall=Output/(Q_boiler+Q_reheater)*100;
disp("Overall thermal efficiency =")
disp(n_overall)
disp("%")


disp("(iv) Specific steam consumption =")
ssc=rate/P; //Specific steam consumption
disp(ssc)
disp("kg/kWh")
clc

h1 = 3578; //kJ/kg
h2 = 3140; //kJ/kg
h3 = 3678; //kJ/kg
h4 = 3000; //kJ/kg
h5 = 2330; //kJ/kg
h_f1=1611; //kJ/kg
h_f2=1087.4; //kJ/kg
h_f4=640.1; //kJ/kg
h_f5=191.8; //kJ/kg
h_f6=h_f5;

disp("(i) Fraction of steam extracted from the turbines at each bled heater =")

disp("closed feed heater")
m1=(h_f2-h_f4)/(h2-h_f4);
disp(m1)
disp("kg/kg of steam supplied by the boiler")

disp("open feed heater")
m2=(1-m1)*(h_f4-h_f5)/(h4-h_f6);
disp(m2)
disp("kg/kg of steam supplied by the boiler")


disp("(ii) Thermal efficiency of the system")

W_total=(h1-h2) + (1-m1)*(h3-h4) + (1-m1-m2)*(h4-h5);
p1=150; //bar
p2=40; //bar
p4=5; //bar
p5=0.1; //bar

v_w1=1/1000; //m^3/kg
v_w2=v_w1;
v_w3=v_w1;

W_P1=v_w1*(1-m1-m2)*(p4-p5)*100; //kJ/kg
W_P2=v_w2*(1-m1)*(p1-p4)*100; //kJ/kg
W_P3=v_w3*m1*(p1-p2)*100; //kJ/kg

W_P=W_P1+W_P2+W_P3; //Total pump work
W_net=W_total-W_P;

Q=(1-m1)*h_f1 +m1*(h_f1); //Heat of feed water extering the boiler
Qs1=h1-Q;
Qs2=(1-m1)*(h3-h2);
Qst=Qs1+Qs2;

n_thermal=W_net/Qst*100;
disp("n_thermal=")
disp(n_thermal)
disp("%")
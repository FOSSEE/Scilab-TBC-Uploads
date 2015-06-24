T1 = 233; V1 = 300; cp = 1.005; g = 1.4;
T2 = T1+((V1^2)/(2*cp))*1e-03 ;
P1 = 35;
P2 = P1*(T2/T1)^(g/(g-1));
rp = 10; // Pressure ratio
P3 = rp*P2;
T3 = T2*(P3/P2)^((g-1)/g);
T4 = 1373;
T5 = T4-T3+T2;
P4 = P3;
P5 = P4*(T5/T4)^(g/(g-1));
disp("K",T5,"Temperature at the turbine exit is")
disp("kPa",P5,"Pressure at the turbine exit is")
P6 = P1;
T6 = T5*(P6/P5)^((g-1)/g);
V6 = (2*cp*1000*(T5-T6))^0.5 ;
disp("m/s",V6,"Velocity of the gas at the nozzle exit is")
w = 50;
Ve = V6; Vi = 300;
Wp_dot = w*Vi*(Ve-Vi);
h4 = 1373; h3 = 536.66;
Q1 = w*cp*(h4-h3); // in kJ/kg
np = Wp_dot/(Q1*1000);
disp("%",np*100,"The propulsive efficiency of the cycle is")
clc
p1=60; //bar; Inlet to turbine
p2=0.1; //bar; Exit from turbine
p3=0.09; //bar; Exit from condenser 
p4=70; //bar ; Exit from pump
p5=65; //bar; Exit from boiler

t1=380; //0C
t5=400; //0C

x2=0.9; //Quality at exit from turbine

C=200; //m/s; Velocity at the exit from turbine 

disp("(i) Power output of the turbine")

//At 60 bar 380 0C, From steam tables

h1=3123.5; //kJ/kg; By interpolation
h_f2=191.8; //kJ/kg
h_fg2=2392.8; //kJ/kg
x2=0.9; 

h2=h_f2+x2*h_fg2;
m_s=10000/3600; //Rate of stem flow in kg/s

P=m_s*(h1-h2);
disp("Power output of the turbine =")
disp(P)
disp("kW")


disp("(ii) Heat transfer per hour in the boiler and condenser")

h_f4=1267.4; //kJ/kg
h_a=3167.6; //kJ/kg

Q1=10000*(h_a - h_f4); 
disp("Heat transfer per hour in the boiler =")
disp(Q1)
disp("kJ/h")

h_f3=183.3; //kJ/kg
Q2=10000*(h2-h_f3);
disp("Heat transfer per hour in the condenser =")
disp(Q2)
disp("kJ/h")


disp("(iii) Mass of cooling water circulated per hour in the condenser")
c_pw=4.18;
t2=30;
t1=20;

m_w=Q2/c_pw/(t2-t1);
disp("m_w=")
disp(m_w)
disp("kg/h")
disp("This is the exact answer.")

disp("(iv) Diameter of the pipe connecting turbine with condenser")

v_g2=14.67; //m^3/kg

d=sqrt(m_s*x2*v_g2*4/%pi/C)*1000;
disp("Diameter =")
disp(d)
disp("mm")
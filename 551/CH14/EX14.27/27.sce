clc
h2=615; //kJ/kg
h3=664; //kJ/kg
h4=446; //kJ/kg
h1=h4;
v2=0.14; //m^3/kg
capacity=20; //tonnes
n=6; //number of cylinder

disp("(i) Refrigerating effect per kg =")
RE=h2-h1;
disp(RE)
disp("kJ/kg")

disp("(ii) Mass of refrigerant to be circulated per minute =")
m=capacity*14000/RE/60;
disp(m)
disp("kg/min")

disp("(iii) Theoretical piston displacement =")
v=v2*m;
disp(v)
disp("m^3/min")

disp("(iv) Theoretical power =")
P=m/60*(h3-h2);
disp(P)
disp("kW")

disp("(v)COP =")
COP=(h2-h1)/(h3-h2);
disp(COP)

disp("(vi) Heat removed through the condenser =")
Q=m*(h3-h4);
disp(Q)
disp("kJ/min")

disp("(vii) Theoretical displacement per minute per cylinder")

d=(v/n*4/%pi/950)^(1/3)*1000;
disp("Diameter of cylinder =")
disp(d)
disp("mm")

l=d;
disp("Stroke length =")
disp(l)
disp("mm")
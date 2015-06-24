clc
h2=1597; //kJ/kg
h3=1790; //kJ/kg
h4=513; //kJ/kg
h1=h4;
t3=58; //0C
x1=0.13;
tc=27; //0C
capacity=10.5; //tonnes

disp("(i) Condition of the vapour at the outlet of the compressor =")
t=t3-tc;
disp(t)
disp("°C")

disp("(ii) Condition of vapour at entrance to evaporator =")
disp(x1)

disp("COP =")
COP=(h2-h1)/(h3-h2);
disp(COP)

disp("(iv) Power required =")
P=capacity*14000/COP/3600;
disp(P)
disp("kW")
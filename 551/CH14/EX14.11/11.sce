clc
y=1.4;
cp=1.003; //kJ/kg K
T3=289; //K
T1=314; //K
p1=5.2; //bar
p2=1; //bar
capacity=6; //tonnes
R=287; //J/kg K
l=0.2; //m

T4=T3*(p1/p2)^((y-1)/y);
T2=T1*(p2/p1)^((y-1)/y);


disp("(i) C.O.P. =")
COP=T2/(T1-T2);
disp(COP)

disp("(ii) Mass of air in circulation")
e=cp*(T3-T2); //Refrigerating effect per kg of air
E=capacity*14000; //Refrigerating effect produced by the refrigerating machine in kJ/h

m=E/e/60;
disp("mass of air in circulation =")
disp(m)
disp("kg/min")


disp("Piston displacement of compressor")
V3=m*R*T3/p2/10^5;

V_swept=V3/2/240;

d_c=sqrt(V_swept/l/%pi*4);

disp("Diameter or bore of the compressor cylinder =")
disp(d_c*1000)
disp("mm")

disp("Piston displacement of expander")
V2=m*R*T2/p2/10^5;
V_swept=V2/2/240;

d_c=sqrt(V_swept/l/%pi*4);
disp("Diameter or bore of the expander cylinder =")
disp(d_c*1000)
disp("mm")


disp("(v) Power required to drive the unit")
W=capacity*14000/COP/3600;
disp("power =")
disp(W)
disp("kW")
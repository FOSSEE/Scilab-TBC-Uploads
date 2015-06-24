clc
p1=1000; //kPa
p2=100; //kPa
p4=p1;
p3=p2;
E=2000; // Refrigerating effect produced in kJ/min 
T3=268; //K
T1=303; //K
y=1.4;

disp("(i) Mass of air circulated per minute")
T2=T1*(p2/p1)^((y-1)/y);
e=cp*(T3-T2); //Refrigerating effect per kg; kJ/kg

m=E/e;
disp("m=")
disp(m)
disp("kg/min")


disp("(ii) Compressor work (Wcomp.), expander work (Wexp.) and cycle work (Wcycle)")
T4=T3*(p4/p3)^((y-1)/y);

Wcomp=y/(y-1)*m*R*(T4-T3);
disp("Compressor work =")
disp(Wcomp)
disp("kJ/min")

Wexp=y/(y-1)*m*R*(T1-T2);
disp("Expander work =")
disp(Wexp)
disp("kJ/min")

W_cycle=Wcomp-Wexp;
disp("Wcycle=")
disp(W_cycle)
disp("kJ/min")


disp("(iii) C.O.P. and power required")
COP=E/W_cycle;
disp("COP =")
disp(COP)

P=W_cycle/60;
disp("Power required =")
disp(P)
disp("kW")
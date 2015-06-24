// resistances in ohms 
R1 = 25;
R2 = 300;
R3 = 80;
R4 = 30;
R5 = 60;

Rcd = R5*R4/(R5 + R4);
Rbd1 = Rcd + R3;
Rbd = Rbd1*R2/(Rbd1 + R2);
Req = Rbd + R1; // equivalent resistance 
disp(Req, "equivalent resistance = ")
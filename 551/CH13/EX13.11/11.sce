clc
p1=1; //bar
T1=343; //K
p2=7; //bar
Qs=465; //kJ/kg of air
cp=1; //kJ/kg K
cv=0.706; //kJ/kg K
y=1.41;

disp("(i) Compression ratio of engine =")
r=(p2/p1)^(1/y);
disp(r)


disp("(ii) Temperature at the end of compression =")
T2=T1*(r)^(y-1);
t2=T2-273;
disp(t2)
disp("0C")

disp("(iii) Temperature at the end of heat addition =")
T3=Qs/cv+T2;
t3=T3-273;
disp(t3)
disp("0C")

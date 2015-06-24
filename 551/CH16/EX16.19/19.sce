clc
M1=1.5;
p1=170; //kN/m^2
T1=296; //K
y=1.4;

disp("(i) Pressure, temperature and Mach number downstream of the shock")

p2=p1*(2*y*M1^2 - (y-1))/(y+1);
disp("p2=")
disp(p2)
disp("kN/m^2")

T2=T1*((y-1)*M1^2 + 2)*(2*y*M1^2 - (y-1))/(y+1)^2/M1^2;
disp("T2=")
disp(T2)
disp("K")

M2=sqrt(((y-1)*M1^2 + 2)/(2*y*M1^2 - (y-1)));
disp("M2=")
disp(M2)

strength=p2/p1 - 1;
disp("Strength of stock =")
disp(strength)
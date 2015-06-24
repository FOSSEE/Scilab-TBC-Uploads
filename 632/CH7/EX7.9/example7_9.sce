//clc()
//1 - pentane, 2 - hexane, 3 - heptane
x1 = 0.6;
x2 = 0.25;
x3 = 0.15;
A1 = 13.8183;
A2 = 13.8216;
A3 = 13.8587;
B1 = 2477.07;
B2 = 2697.55;
B3 = 2911.32;
C1 = 39.94;
C2 = 48.78;
C3 = 56.51;
//As raoults law is applicable, Ki = yi/xi = Pis/P
//yi = xi*Pis/P
//ln P = A- B/(T-C)
//Assuming,
P = 400;//kPa
T = 369.75;//K
Pas1 =exp(A1 - B1 / (T - C1));
Pas2 =exp(A2 - B2 / (T - C2));
Pas3 =exp(A3 - B3 / (T - C3));
Yi = (x1*Pas1 + x2*Pas2 + x3*Pas3)/P;
disp("K",T,"(a)bubble point temperature of the mixture = ")
y1 = x1*Pas1/P;
y2 = x2*Pas2/P;
y3 = x3*Pas3/P;
disp("%",y1*100,"(b)composition of n-pentane in vapour = ")
disp("%",y2*100,"composition of n-hexane in vapour = ")
disp("%",y3*100,"composition of n-heptane in vapour = ")
T1 = 300;//K
Ps1 =exp(A1 - B1 / (T1 - C1));
Ps2 =exp(A2 - B2 / (T1 - C2));
Ps3 =exp(A3 - B3 / (T1 - C3));
P1 = x1*Ps1 + x2*Ps2 + x3*Ps3;
disp("kPa",P1,"(c)Bubble point pressure =")

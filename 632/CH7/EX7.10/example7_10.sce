//clc()
//1 - pentane, 2 - hexane, 3 - heptane
y1 = 0.6;
y2 = 0.25;
y3 = 0.15;
A1 = 13.8183;
A2 = 13.8216;
A3 = 13.8587;
B1 = 2477.07;
B2 = 2697.55;
B3 = 2911.32;
C1 = 39.94;
C2 = 48.78;
C3 = 56.51;
P = 400;//kPa
T = 300;//K
//As raoults law is applicable, Ki = yi/xi = Pis/P
//xi = yi*P/Pis
//ln P = A- B/(T-C)
//Assuming,
T1 = 385.94;//K
Pas1 =exp(A1 - B1 / (T1 - C1));
Pas2 =exp(A2 - B2 / (T1 - C2));
Pas3 =exp(A3 - B3 / (T1 - C3));
disp("K",T,"(a)Dew point temperature of the mixture = ")
Ps1 =exp(A1 - B1 / (T - C1));
Ps2 =exp(A2 - B2 / (T - C2));
Ps3 =exp(A3 - B3 / (T - C3));
P1 = 1/(y1/Ps1 + y2/Ps2 + y3/Ps3);
disp("kPa",P1,"(b)Dew point pressure = ")

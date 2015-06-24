clear;
clc;
HP = 80;
RPM = 120;
b = 10;// feet
h = 3;// feet
F = 8000;// lb-wt
m = 4;
T = HP*33000*12/(2*%pi*RPM*2240);// ton-inches
M = F*h*(b-h)*12/(b*2240);// ton-inches
//(i) The major principal stress f1 is given by
f1 = 6;// tons/in^2
d1 = ((M+sqrt(M^2 + T^2))*16/(%pi*f1))^(1/3);// inches

//(ii) If f_s_dash is the maximum intensity of shear stress
f_s_dash = 3;// tons/in^2
d2 = (sqrt(M^2 + T^2) * 16/(%pi*f_s_dash))^(1/3);// inches

//(iii) If e is the major principal strain
Ee = 6;// tons/in^2
d3 = (((1-(1/m))*M + (1+(1/m))*sqrt(M^2 + T^2))*16/(%pi*Ee))^(1/3);// inches

//(iv) If f is the direct stress which, acting alone will produce the same maximum strain energy 
f = 6;// tons/in^2
d4 = ((sqrt(4*M^2 + 2*(m+1)*(T^2)/m))*16/(%pi*f))^(1/3);// inches
printf('The diameter of the shaft in different cases will be, (i) d = %.3f inches\n                                                      (ii) d = %.3f inches\n                                                      (iii) d = %.3f inches\n                                                       (iv) d = %.3f inches',d1,d2,d3,d4);
//there are round-off errors in the answers given in textbook.

Psat = 2.339;
fi3 = 0.50;
P = 101.3; cp = 1.005;
Pw3 = fi3*Psat;
Pa3 = P-Pw3;
W3 = 0.622*(Pw3/Pa3);
Psa1_1 = 0.7156;
Pw1 = 0.7156;
Pa1 = P-Pw1;
W1 = 0.622*(Pw1/Pa1); W2 = W1;
T3 = 293; Ra = 0.287; Pa3 = 100.13;
va3 = (Ra*T3)/Pa3;
SW = (W3-W1)/va3;
t3 = 20; tsat = 9.65; hg = 2518; h4 = 10;
t2 = ( W3*(hg+1.884*(t3-tsat))-W2*(hg-1.884*tsat) + cp*t3 - (W3-W2)*h4 )/ (cp+W2*1.884)
disp("kg moisture/m3",SW,"Mass of spray water required is")
disp("degree",t2,"Temperature to which air must be heated is")


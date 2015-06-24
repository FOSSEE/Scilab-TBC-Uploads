clc
// X*(x/12 C + y/2 H2) + Y O2 + 79/21*Y/N2 → 0.15CO2 + 0.03CO + 0.03CH4 + 0.01H2 + 0.02O2 + a H2O + 0.76N2

Y=0.76/(79/21);
a=2*(Y-0.15-0.03/2-0.02);
Xx=12*(0.15+0.03+0.03);
Xy=2*(2*0.03+0.01+a);
ratio=Xx/Xy;

disp("Ratio of C to H2 in fuel =")
disp(ratio)
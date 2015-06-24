clear
clc
Kh=150;//Henry's law constant in torr
X1=0.12;//mole fraction of acetone
P=(Kh*X1);//vapour pressure of acetone in torr
printf('P=%.1d torr',P)
Kh1=175;//Henry's law constant for chloroform in torr
X2=(P/Kh1);
printf('\nX2=%.3f',X2)

//page 119


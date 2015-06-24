//chapter1
//example 1.17
//page 49, figure 1.60
I=.2*10^-3; B=200;Va=100;Rl=%inf;
Vt=26*10^-3//assuming at room temprature
I2=I/2
I4=I2
r02=Va/I2;
disp(r02)
r04=Va/I4;
disp(r04)
Gm=2/Vt
Aid=Gm/((1/r02)+(1/r04)+(1/Rl));
disp(Aid)
Ri=2*(B/I)//Ri=2*r
disp(Ri)
Ri=(r02*r04)/(r02+r04);
disp(Ri)
//clc()
T = [371.4 378 383 388 393 398.6]
Pas = [101.3 125.3 140 160 179.9 205.3]
Pbs = [44.4 55.6 64.5 74.8 86.6 101.3]
Ptotal = 101.3;//kPa
for i = 1:6
    x(i) = (Ptotal - Pbs(i))/(Pas(i) - Pbs(i));
end
for i = 1:6
    y(i) = x(i) * Pas(i) / Ptotal;
end
plot(x,T,'-o');
plot(y,T,'-x');
xtitle('Boiling point diagram','Mole fraction x or y','Temperature K')
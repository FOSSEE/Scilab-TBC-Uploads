//clc()
P = 101.3;//kPa
T = [283 293 303 313];
for i=1:4
    Ps(i) = exp(13.8858 - 2788.51/(T(i)-52.36));
end
for j =1:4
    Ys(j) = Ps(j) * 78.048 / ((P - Ps(j))*29);
end
disp(Ps)
disp(Ys)
plot(T,Ys,rect = [270,0,323,0.9]);
//Tas = Tg - L *(Y1as - Y1) / Cs
//Cs = Cb + Y1 *Ca = 1.005 + Y1 * 1.2,   
L = 435.4;//kJ/kgK
//for different value of Tg and Y1 tried, we have the following set of values
Tg = [283 290.4 300 310.1 320.8];
Y1 = [0.1701150 0.15 0.125 0.1 0.075];
plot(Tg,Y1);
xtitle('Saturation curve and adiabatic cooling line','Temperature, K','Y, kg benzene/kg dry air');
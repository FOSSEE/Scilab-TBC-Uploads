//clc()
P = 100;//kPa
T = [273 280 290 300 310 320 330 340];
for i =1:8
    Ps(i) = exp(13.8216 - 2697.55/(T(i)-48.78));
end
disp((Ps))
for j = 1:8
    Ys(j) = Ps(j) * 86.11 / ((P - Ps(j))*28);
end
disp(Ys)
plot(T,Ys,rect=[273,0,333,10]);
xtitle('100% saturation line for nitrogen-hexane system','Temperature, K','Humidity, kg hexane/kg nitrogen');
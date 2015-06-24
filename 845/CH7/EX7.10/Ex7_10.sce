//Etample 7.10

clc
clear

t = 0:10:80;
a = [30 31.63 33.34 35.47 37.75 40.33 43.25 46.69 50.67];

h = t(2) - t(1);
n = length(t);

Is13 = a(1);
for i = 2:n-1
    rem2 = i-fix(i./2).*2;
    if rem2 == 0 then
        Is13 = Is13 + 4*a(i);
    else
        Is13 = Is13 + 2*a(i);
    end
end
Is13 = (Is13 + a(n))/10^3;
Is13 = round(h/3*Is13*10^4)/10^4;
disp(strcat(["v = ",string(Is13)," km/s"]))

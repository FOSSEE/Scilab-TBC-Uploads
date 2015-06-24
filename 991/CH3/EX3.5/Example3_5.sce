//Example 3.5.
clc
format(9)
vinitial=1*10^6
q=1.6*10^-19
V=300
m=9.1*10^-31
vfinal=10.33*10^6
sp=8*10^-3 //separation between plates
v=sqrt(vinitial^2+(2*q*V/m))
disp("The speed acquired by electron due to the applied voltage is")
disp(v,"v(m/s) = sqrt(vinitial^2+(2*q*V/m)) =")
format(8)
va=(vinitial+vfinal)/2
disp("The average velocity,")
disp(va,"vaverage(m/s)= (vinitial + vfinal) / 2 =")
time=sp/va
disp(time,"Therefore, time for travel(seconds)= seperation between plates / vaverage =")
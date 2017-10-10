//Example 3.4.
clc
V=200
m=9.1*10^-31;
q = 1.6*10^-19;
format(8)
v=sqrt(2*q*V/m)
disp("(i)The electron starts from rest at plate A, therefore, the initial velocity is zero. The velocity of electron on reaching plate B is")
disp(v,"v(m/s) = sqrt(2*q*V/m) =")
iv=0 //initial velocity
fv=8.38*10^6 //final velocity
va=(iv+fv)/2 //average velocity of electron in transit
disp("(ii)Time taken by the electron to travel from plate A to plate B can be calculated from the average velocity of the electron in transit.The average velocity is,")
disp(va,"vaverage(m/s) = (Initial velocity + Final velocity) / 2 =")
sp=3*10^-3 //separation between the plates
time=sp/va
disp("Therefore, time taken for travel is,")
disp(time,"Time(seconds) = Separation between the plates / Average velocity =")
ke=q*V
disp("(iii)Kinetic energy of the electron on reaching the plate B is")
disp(ke,"Kinetic energy(Joules) = q V =")
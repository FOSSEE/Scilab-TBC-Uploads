clear all; clc;

Pe=1.5
Eg=0.96//generator efficiency
Em=0.94//transmission efficiency
P=Pe/(Eg*Em)
printf('\n The power is equal to %0.3f MW',P)
disp("After converting to W the magnitude of power is equal to 1.662*10^6 W")

Cp=0.47//from figure 11.10
V=13
rho=1.222
disp(" Since P=Cp(0.5*rho*A*V^3),thus on substituting the values we get P=630.9A")
A=P*10^6/(Cp*0.5*rho*V^3)// Since P=Cp*(0.5*rho*A*V^3)
printf(' On substituing the value of P in P=630.9A we get A equal to %g',A)

disp("After rounding off,the area is equal to 2634.7m^2")
Ar=2634.7//rounded off A
//A=R^2*pi
R=sqrt(A/%pi)
printf(' The Radius is equal to %g m',R)

disp("After rounding off the,area is equal to 28.9m")
Rr=28.9//rounded off
D=2*Rr
printf(' The Diameter is equal to %g m',D)

omega=(V/R)*5.3// In the book diameter has been incorrectly substituted in place of radius(R). That is the reason why this particular answer doesn't match with the one given in the book.
printf('\n Omega is equal to %0.2f rad/s',omega)
N=(omega*30)/%pi//since N is proportional to omega and the answer for omega doesnt match with the answer given in the book(because of the aforementioned reason), the answer of N doesn't match either.
printf('\n RPM is equal to %g rpm',N)

//exmaple9.7
clc
disp("phi=8 degree, l=3 cm, B=0.6 mT=0.6*10^-3 Wb/m^2")
disp("a) phi=(l*q*B)/(m*v) where v= velocity of electrons")
disp("But phi must be in radians")
p=(8*%pi)/180
format(7)
disp(p,"Therefore, phi=8 degree=(8*pi)/180 radians= ")
disp("Therefore, 0.1396 = ((3*10^-2)*(1.6*10^-19)*(0.6*10^-3))/(9.107*10^-31 *v)")
v=((3*10^-2)*(1.6*10^-19)*(0.6*10^-3))/(0.1396*9.107*10^-31)
format(9)
disp(v,"Therefore, v(in m/s)=")
disp("b) f_m(in N) = (B*q*v) = force on each electron")
f=(0.6*10^-3)*(1.6*10^-19)*(22.65*10^6)
disp(f,"= (0.6*10^-3)*(1.6*10^-19)*(22.65*10^6) = ")

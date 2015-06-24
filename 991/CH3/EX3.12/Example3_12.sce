//Example 3.12
clc
format(9)
v=sqrt((2*(1.6*10^-19)*1000)/(9.1*10^-31))
disp(v,"(i) Velocity of beam, v(m/s) = sqrt(2qVa/m) =")
format(6)
D=((2*10^-2)*(20*10^-2)*25)/(2*1000*(0.5*10^-2))
disp("(ii) Deflection sensitivity = D/Vd")
disp(D,"where  D(cm) = l*L*Vd / 2*Va*d =")
format(7)
ds=D/25
disp(ds,"Therefore, the deflection sensitivity(cm/V) = ")
theta=atand(1/1800)
disp("(iii) To find the angle of deflection, theta :")
disp("  tan(theta) = D/L-l")
disp(theta,"Therefore,  theta(in degree) = tan^-1(D/L-l) =")
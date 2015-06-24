//DCF form
A=[0 1 0;0 0 1;-6 -11 -6]
x=spec(A)
T=[1 1 1;x(1,1) x(2,1) x(3,1);(x(1,1))^2 (x(2,1))^2 (x(3,1))^2]
Adcf=inv(T)*A*T
disp(Adcf,"Adcf=")
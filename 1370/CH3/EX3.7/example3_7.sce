//example3.7
clc
disp("The given values are, R1=0.2 ohm, R2=0.05 ohm, X1=0.75 ohm, X2=0.2 ohm, cos(psi)=0.8 leading")
k=125/250
disp(k,"E2/E1=")
i=(5*10^3)/125
disp(i,"(I2)(F.L)[in A]=(kVA)/V2=")
r=0.05+((0.5^2)*0.2)
disp(r,"R_2e(in ohm)=R2+(K^2)*R1=")
x=0.2+((0.5^2)*0.75)
format(7)
disp(x,"X_2e(in ohm)=X2+(K^2)*X1=")
disp("i) Regulation on full load, cos(psi)=0.8 leading")
disp("sin(psi)=0.6")
disp("Therefore, %R=[(I2)*(R_2e)*cos(psi)-(I2)*(X_2e)*sin(psi)]/E2 * 100,       ..I2=I2(FL)=40 A")
disp(" = (40*0.1*0.8-40*0.3875*0.6)/125 * 100")
r=((40*0.1*0.8)-(40*0.3875*0.6))/1.25
format(5)
disp(r," = ")
disp("ii) On full load, 0.8 p.f. leading the total voltage drop is,")
disp("Voltage drop(in V) = I2(FL)[(R_2e)cos(psi)-(X_2e)sin(psi)]")
v=40*((0.1*0.8)-(0.3875*0.6))
format(4)
disp(v," = ")
disp("Therefore, E2-V2= -6.1  i.e.  125-V2= -6.1")
v=125+6.1
format(6)
disp(v,"Therefore, V2(in V)= Secondary terminal voltage = 125+ 6.1 =")

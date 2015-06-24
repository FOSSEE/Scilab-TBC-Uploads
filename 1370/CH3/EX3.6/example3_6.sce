//example3.6
clc
disp("R1=1 ohm, R2=2 ohm, X1=3 ohm, X2=5 ohm")
k=110/220
disp(k,"K=V2/V1=")
r=1+(2/((0.5)^2))
disp(r,"Therefore, (R_1e)[in ohm]=R1+R2''=R1+(R2/K^2)=")
x=3+(5/((0.5)^2))
disp(x,"Therefore, (X_1e)[in ohm]=X1+X2=X1+(X2/K^2)=")
z=sqrt((9^2)+(23^2))
format(8)
disp(z,"Therefore, (Z_1e)[in ohm]=sqrt((R_1e^2)+(X_1e^2))=")
r=9*(0.5^2)
disp(r,"Therefore, (R_2e)[in ohm]=(K^2)*(R_1e)=")
x=(0.5^2)*23
disp(x,"and, (X_2e)[in ohm]=(K^2)*(X_1e)=")
z=(0.5^2)*24.6981
format(7)
disp(z,"Therefore, (Z_2e)[in ohm]=sqrt((R_2e^2)+(X_2e^2))=(K^2)*(Z_1e)=")

syms M1 X1 B1 K X2 M2 B2 

F=M1*X1*s^2 + B1*s*X1 + K*X1 + K1*(X1-X2)
//M2*X2*s^2 + K1*(X2-X1)=0
X2=X1*K1/(s^2*M2+K1)

disp(X2/F,"X2/F = ")


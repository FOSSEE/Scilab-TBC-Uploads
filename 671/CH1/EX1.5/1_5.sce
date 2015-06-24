

R1=input("R1=")
R2=input("R2=")
R3=input("R3=")
Vs1=input("Vs1=")
Vs2=input("Vs2=")

R=[R1+R3,-R3;-R3,R2+R3];
V=[Vs1;-Vs2];
I=inv(R)*V;

disp(I)
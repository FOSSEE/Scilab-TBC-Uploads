clc;
A=[2 1 0;0 2 1;0 0 2];
V=[2 0 0;0 2 0; 0 0 2];
N=[0 1 0;0 0 1;0 0 0];
z=N*N*N;
if z==0 then
    disp("N is a nilpotent of index 3");
else
    disp("N is not nilpotent")
end
if V*N==N*V then
    disp("V and N commute")
else
    disp("V and N dont commute")
end
syms t
//e^(A*t)=e^(v*t)*e^(N*t)
e=spec(V);//eigen values
b2=t^2*%e^(e(3)*t);
b1=t*%e^(e(2)*t)-b2*2*e(2);
b0=%e^(e(1)*t)-b1*e(1)-b2*e(1)^2;
eVt=b0*eye(V)+b1*V+b2*V^2;
disp(eVt,"e^(Vt)")
e=spec(N);//eigen values
b2=t^2*%e^(e(3)*t);
b1=t*%e^(e(2)*t)-b2*2*e(2);
b0=%e^(e(1)*t)-b1*e(1)-b2*e(1)^2;
eNt=b0*eye(N)+b1*N+b2*N^2;
disp(eNt,"e^(Nt)")
eAt=eVt*eNt;
disp(eAt,"e^(A*t)=")
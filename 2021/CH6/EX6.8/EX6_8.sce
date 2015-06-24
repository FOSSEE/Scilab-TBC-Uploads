//Fiding of Discharge
//Given
d1=0.3;
pd=0.06;
g=9.81;
cv=0.98;
//To Find
vc=sqrt(2*g*pd)*cv;
V=0.8*vc;
A=(%pi/4)*d1^2;
q=V*A;
disp(" Discharge ="+string(q)+" m^3/sec");

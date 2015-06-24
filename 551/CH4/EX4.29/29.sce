clc
m=0.44; //kg
T1=453; //K
ratio=3; //ratio=V2/V1
T2=288; //K
W_12=52.5; //kJ
y=log(T2/T1)/ log(1/ratio) + 1;
R=W_12*(y-1)/m/(T1-T2);
// We have got two equations
// cp-cv=R
// cp-y*cv=0
M=[1,-1;1,-y];
N=[R;0];
X=inv(M)*N;
cp=X(1,1);
cv=X(2,1);
disp("cp=")
disp(cp)
disp("kJ/kg.K")


disp("cv=")
disp(cv)
disp("kJ/kg.K")
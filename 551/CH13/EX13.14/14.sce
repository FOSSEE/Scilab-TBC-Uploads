clc

// W=Qs-Qr=cv*(T3-T2) - cv*(T4-T1)
// T2=T1*(r^(y-1))
// T3=T4*(r^(y-1))
// W=cv*[T3-T1*r^(y-1) - T3/r^(y-1)+T1];
// dW/dr=-T1*(y-1)*r^(y-2) - T3*(1-y)*r^(-y)=0

//By solving this we get

disp("r=(T3/T1)^(1/2/(y-1))")

disp("(b)Change in efficiency")

T3=1220; //K
T1=310; //K

// For air
y=1.4;
r1=(T3/T1)^(1/2/(y-1));
n1=1-1/r1^(y-1); //air standard Efficiency
disp("Air standard Efficiency =")
disp(n1)

//For helium
cp=5.22; //kJ/kg K
cv=3.13; //kJ/kg K
y=cp/cv;
r2=(T3/T1)^(1/2/(y-1));

n2=1-1/r2^(y-1);
disp("Air standard efficiency for helium =")
disp(n2)

change=n1-n2;
disp("Change in efficiency=")
disp(change)

disp("Hence change in efficiency is nil")
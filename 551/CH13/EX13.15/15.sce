clc
// W=cv*[T3-T1*r^(y-1) - T3/r^(y-1)+T1]
// r=(T3/T1)^(1/2/(y-1))
// T2=T1*r^(y-1)
// T4=T3/r^(y-1)

// T2=T1*[(T3/T1)^(1/2/(y-1))]^(y-1)


//T2=sqrt(T1*T3)

//Similarly T4=T3/[(T3/T1)^(1/2/(y-1))]^(y-1)
//T4=sqrt(T1*T3)

disp("T2=T4=sqrt(T1*T3)")


disp("(b) Power developed ")
T1=310; //K
T3=1450; //K
m=0.38; //kg
cv=0.71; //kJ/kg K

T2=sqrt(T1*T3);
T4=T2;

W1=cv*[(T3-T2) - (T4-T1)]; //Work done
W=m/60*W1; //Work done per second

disp("Power =")
disp(W)
disp("kW")
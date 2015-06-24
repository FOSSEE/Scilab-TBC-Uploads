//Page Number: 11.28
//Example 11.26
clc;
//Given
Pa=[0.81 0.09 0.09 0.01];
n=[1 2 3 4];

//Average Code length
//L=Summation(P(xi)ni) 
L=0;
for i=1:4
    L=L+(Pa(i)*n(i));
end

//Entropy of second order extension
//As H(X^2)=-Sum of[P(ai)log2P(ai)] 
//Where i=0 to n;
HofX2=0;
for i=1:4
    HofX2=HofX2+(Pa(i)*log2(Pa(i)));
end
//b/s

//Efficiency=H(X^2)/L
n=-HofX2/L;
np=n*100;
disp('%',np,'Code efficiency:');

//Redundancy
g=1-n;
gp=g*100;
disp('%',gp,'Code redundancy:');


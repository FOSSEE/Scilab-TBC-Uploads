//Page Number: 11.27
//Example 11.25
clc;
//Given
p=0.9;
Px=[p (1-p)];

n=1;
//Average Code length
//L=Summation(P(xi)ni) 
L=0;
for i=1:2
    L=L+(Px(i)*n);
end

//As H(X)=-Sum of[P(xi)log2P(xi)] 
//Where i=0 to n;
HofX=0;
for i=1:2
    HofX=HofX+(Px(i)*log2(Px(i)));
end

//Efficiency=H(X)/L
n=-HofX/L;
np=n*100;
disp('%',np,'Code efficiency:');

//Redundancy
g=1-n;
gp=g*100;
disp('%',gp,'Code redundancy:');


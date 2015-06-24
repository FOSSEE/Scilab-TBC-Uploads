//Page Number: 11.31
//Example 11.32
clc;
//Given
Px=[1/2 1/4 1/8 1/8];

//As I(xi)=-log2(Pxi)
for i=1:4
Ix(i)=-log2(Px(i));
n(i)=Ix(i);
end

//As H(X)=-Sum of[P(xi)log2P(xi)]
//and I(xi)=-log2p(xi) 
//Where i=0 to n;
HofX=0;
for i=1:4
    HofX=HofX+(Px(i)*Ix(i));
end

//Average Code length
//L=Summation(P(xi)ni) 
L=0;
for i=1:4
    L=L+(Px(i)*n(i));
end

//Efficiency=H(X)/L
n=HofX/L;
np=n*100;
disp('%',np,'Code efficiency:');

//Hence, efficiency is 100%

//Page Number: 11.33
//Example 11.34
clc;
//Given
//(a) For Shannon Fano Code
Px=[0.4 0.19 0.16 0.15 0.1];
n=[2 2 2 3 3];

//Average Code length
//L=Summation(P(xi)ni) 
L=0;
for i=1:5
    L=L+(Px(i)*n(i));
end

//As H(X)=-Sum of[P(xi)log2P(xi)] 
//Where i=0 to n;
HofX=0;
for i=1:5
    HofX=HofX+(Px(i)*log2(Px(i)));
end

//Efficiency=H(X)/L
n=-HofX/L;
np=n*100;
disp('%',np,'Code efficiency for shannon fanon:');

//(b) For Huffman Code
nh=[1 3 3 3 3];

//Average Code length
//L=Summation(P(xi)ni) 
Lh=0;
for i=1:5
    Lh=Lh+(Px(i)*nh(i));
end

//Efficiency=H(X)/L
n1=-HofX/Lh;
np1=n1*100;
disp('%',np1,'Code efficiency for hauffman:');

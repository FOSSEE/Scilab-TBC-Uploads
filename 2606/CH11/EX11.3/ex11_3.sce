//Page Number: 11.13
//Example 11.3
clc;
//As H(X) is maximum when
//Px1=Px2=1/2
Px=[0.5 0.5];

//As H(X)=-Sum of[P(xi)log2P(xi)] 
//Where i=0 to n;
HofX=0;
for i=1:2
    HofX=HofX+(Px(i)*log2(Px(i)));
end
disp('b/symbol',-HofX,'Maximum H(X):');

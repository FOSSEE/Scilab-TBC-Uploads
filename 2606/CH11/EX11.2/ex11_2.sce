//Page Number: 11.12
//Example 11.2
clc;
//Given
//Probabilities of four symbols
Px=[0.4 0.3 0.2 0.1];

//(a) H(X)
//As H(X)=-Sum of(P(xi)log2P(xi)) 
//Where i=0 to n;
HofX=0;
for i=1:4
    HofX=HofX+(Px(i)*log2(Px(i)));
end
disp('b/symbol',-HofX,'H(X):');

//(b)Amount of information in x1x2x1x3 and x4x3x3x2
Px1x2x1x3=Px(1)*Px(2)*Px(1)*Px(3);
Ix1x2x1x3=-log2(Px1x2x1x3);
disp('b/symbol',Ix1x2x1x3,'Ix1x2x1x3:');

Px4x3x3x2=Px(4)*Px(3)*Px(3)*Px(2);
Ix4x3x3x2=-log2(Px4x3x3x2);
disp('b/symbol',Ix4x3x3x2,'Ix4x3x3x2:');

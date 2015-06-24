//Page Number: 11.32
//Example 11.33
clc;
//Given
//(a)Efficiency of code
Px=[0.2 0.2 0.2 0.2 0.2];
na=[2 2 2 3 3];

//As H(X)=-Sum of[P(ai)log2P(ai)] 
//Where i=0 to n;
HofX=0;
for i=1:5
    HofX=HofX+(Px(i)*log2(Px(i)));
end

//Average Code length
//L=Summation(P(xi)ni)
La=0;
for i=1:5
    La=La+(Px(i)*na(i));
end 

//Efficiency=H(X)/L
ea=-HofX/La;
npa=ea*100;
disp('%',npa,'Code efficiency for Shannon code 1:');

//(b) Another Shannon Fano Code
nb=[2 3 3 2 2];

//Average Code length
//L=Summation(P(xi)ni)
Lb=0;
for i=1:5
    Lb=Lb+(Px(i)*nb(i));
end 

//Efficiency=H(X)/L
eb=-HofX/Lb;
npb=eb*100;
disp('%',npb,'Code efficiency for Shannon code 2:');

//(c) Hauffman Code
nc=[2 3 3 2 2];

//Average Code length
//L=Summation(P(xi)ni)
Lc=0;
for i=1:5
    Lc=Lc+(Px(i)*nc(i));
end 

//Efficiency=H(X)/L
ec=-HofX/Lc;
npc=ec*100;
disp('%',npc,'Code efficiency for Hauffman code:');

//Efficiency of all codes is same

//Page Number: 11.15
//Example 11.5
clc;
//Given
//Picture elements
pe=2D+6;
//Brightness levels
l=16;
//Rate of repeatation
rr=32; //Per second


//As H(X)=-Sum of[P(xi)log2P(xi)] 
//Where i=0 to n;
HofX=(-1)*l*[(1/l)*log2(1/l)];

r=pe*rr;

//As R=r*H(X)
R=r*HofX;
disp('b/symbol',R,'Average rate of information conveyed:');

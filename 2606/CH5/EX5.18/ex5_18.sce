//Page Number: 5.31
//Example 5.18
clc;
//Given,
SbyN=40; //db
SbyN0=10^(SbyN/10);

//As sbyn=3L^2/2
L=sqrt((2*(SbyN0))/3);
LL=round(L);

n=(log2(LL));

nn=(round(n))+1; //Upper limit

disp(nn,'Binary digits');
LL=2^nn;

disp(LL,'Number of levels');
//As SQN= 1.76+6.02(n)
SQN= 1.76+6.02*(nn);
disp('dB',SQN,'Signal to quantizin ratio');




clc
//Initialization of variables
nB=0.59 //mol
nNB=0.41 //mol
xN1=0.38
xN2=0.74
xNm=0.41
//calculations
disp('By lever rule')
ratio=(xNm-xN1)/(xN2-xNm)
percent=ratio*100
//results
printf("The rich phase is %d times more abundant in nitrobenzene",percent+1)

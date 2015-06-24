clear
clc
P1=74.01;//in torr
P2=74.66;//in torr
m2=2;//in gm
m1=100;//in gm
M1=78;//in gm
M2=((m2*M1)/(((P2-P1)/P2)*m1))-((M1*m2)/m1)
printf('M2=%.1f gm/mol',M2)
nCH=94.4/5.6;//mass ratio of C and H
N=nCH*(1/12);//atomic ratio
printf('\nN=%.1f',N)

//atomic ratio is 7:5 (here N is showed decimals)

EM=(12*7)+(1*5);//empirical mass
K=M2/EM;//No. of units C7H5 
printf('\nK=%1f',K)

//Approximately equal to 2, Molecular Formula C14H10
//There are some errors in the solution given in textbook
//page 40 

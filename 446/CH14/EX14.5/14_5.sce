clear
clc
disp('Exa-14.5');
mpi_=140;mp=938;mKo=498;mLo=1116; //mass of various particles
Q1= mpi_+mp-mKo-mLo;          //Q value of reaction 1
mK_=494;mpio=135;         
Q2=mK_+mp-mLo-mpio;         //Q value of reaction 2
printf('The Q values of reactions 1 and 2 are %d MeV and %d MeV',Q1,Q2);

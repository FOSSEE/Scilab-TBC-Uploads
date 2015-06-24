clear;
clc;
disp('Example 15.18');

// aim : To determine 
// thermal eficiency
// carnot efficiency

// given values
rv = 5;// volume ratio
Gama = 1.4;// heat capacity ratio

// solution
// under given condition

TE = 1-(1/Gama*(2-1/rv^(Gama-1)))/(1+2*((Gama-1)/Gama)*log(rv/2));// thermal efficiency
mprintf('\n The thermal efficiency is  =  %f percent\n',TE*100);

CE = 1-1/(2*rv^(Gama-1));// carnot efficiency
mprintf('\n The carnot efficiency is  =  %f \n',CE*100);

//  End

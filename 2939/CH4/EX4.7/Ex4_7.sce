
//Ex4_7
clc;

// Given:
dA = 206-238;
dA_Beta=0;
dA_Alpha = -4;

dZ_Alpha = -2;
dZ_Beta = 1;
nBeta=0; //random initialisation
dZ = 82 -92;
// Solution:
nAlpha = (dA- (dA_Beta* nBeta))/dA_Alpha;

nBeta = (dZ- (dZ_Alpha * nAlpha))/dZ_Beta;

printf("Number of alpha decays =%f and number of beta decays = %f",nAlpha,nBeta);

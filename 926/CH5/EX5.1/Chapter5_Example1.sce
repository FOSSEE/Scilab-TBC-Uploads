//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 1, Page 111
//Title: Calculation of composition of a saturated mixture
//=============================================================================
clear
clc

//INPUT
P = [442,745 760]; //Vapor pressure of ethyl ether, working pressure and standard pressure in mm Hg
T1 = [20 0]; //Temperature of system and standard temperature in degree C
V = 1; //cu ft of mixture(Basis of calculation for part(a) )
MW = [74 28]; //Molecular weight of ethyl ether and nitrogen in lb/lb-mole

//CALCULATIONS
//Part(a)
V1 = V*(P(1)/P(2)); //Pure component volume of vapor in cu ft
v1 = V1*100; //Composition by volume of Ether vapor
v2 = (1-V1)*100; //Composition by volume of Nitrogen
//Part(b)
W1 = V1*MW(1); //lb of ether vapor present
W2 = (1-V1)*MW(2); //lb of Nitrogen present 
W = W1+W2; //Total weight of mixture in lb
w1 = W1*100/W; //Composition by weight of Ether vapor
w2 = W2*100/W; //Composition by weight of Nitrogen
//Part(c)
T = T1+273; //Converting temperature in K
V2 = 359*(P(3)/P(2))*(T(1)/T(2)); //cu ft of mixture
w3 = W1/V2; //lb of vapor per cu ft of mixture
//Part(d)
w4 = W1/W2; //lb of vapor per lb lb of nitrogen
//Part(e)
v3 = V1/(1-V1); //lb mole of vapor per lb moles of Nitrogen

//OUTPUT
// Console output
mprintf('\n (a) Composition by Volume \n     Ether Vapor %3.1f %% \n     Nitrogen %3.1f %% ',v1,v2);
mprintf('\n (b) Composition by Weight \n     Ether Vapor %3.1f %% \n     Nitrogen %3.1f %% ',w1,w2);
mprintf('\n (c) Weight of ether per cu ft of mixture is %4.3f lb ',w3);
mprintf('\n (d) Weight of vapor per lb Nitrogen is %3.2f lb ',w4);
mprintf('\n (e) Moles of vapor per mole of nitrogen is %4.3f',v3);

// File output
fd= mopen('.\Chapter5_Example1_Output.txt','w');
mfprintf(fd,'\n (a) Composition by Volume \n     Ether Vapor %3.1f %% \n     Nitrogen %3.1f %%',v1,v2);
mfprintf(fd,'\n (b) Composition by Weight \n     Ether Vapor %3.1f %% \n     Nitrogen %3.1f %%',w1,w2);
mfprintf(fd,'\n (c) Weight of ether per cu ft of mixture is %4.3f lb ',w3);
mfprintf(fd,'\n (d) Weight of vapor per lb Nitrogen is %3.2f lb ',w4);
mfprintf(fd,'\n (e) Moles of vapor per mole of nitrogen is %4.3f',v3);
mclose(fd);

//=============================END OF PROGRAM==================================

clear ;
clc;
// Example 16.4
printf('Example 16.4\n\n');
//Page no. 495
// Solution 

// Given 
OP_Et = 400 ;//OSHA PEL of ethyl acetate -[ppm by volume]
OP_Mek = 200 ;//OSHA PEL of  Methyl ethyl ketone [ppm by volume]
OP_Nba = 1.3 ;//OSHA PEL of n-butyl acetate [ppm by volume]

vp_Et =   96.9 ;// Vapour pressure of ethyl acetate obtained from CD-[mm of Hg]
vp_Mek =   94.8 ;// Vapour pressure of Methyl ethyl ketone obtained from CD-[mm of Hg]
vp_Nba =   20 ;// Vapour pressure of n-butyl acetate obtained from Perry-[mm of Hg]

// Combined hazard criterion
Chz_Et = vp_Et/OP_Et ;//  Combined hazard criterion of ethyl acetate
Chz_Mek = vp_Mek/OP_Mek ;//  Combined hazard criterion of Methyl ethyl ketone 
Chz_Nba = vp_Nba/OP_Nba ;//  Combined hazard criterion of n-butyl acetate

printf('\nCombined hazard criterion of solvents in increasing order are :\n');
printf('\nEthyl acetate :              %.2f',Chz_Et);
printf('\nMethyl ethyl ketone :        %.2f',Chz_Mek);
printf('\nn-butyl acetate :            %.2f',Chz_Nba);
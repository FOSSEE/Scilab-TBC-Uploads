// Redox Titrations

clear;
clc;

printf("\t Example 4.12\n");

MKMnO4=0.1327;//molarity of KMnO4, M
VKMnO4=16.42;//volume of KMnO4, mL
nKMnO4=MKMnO4*VKMnO4/1000;

nFeSO4=5*nKMnO4;
VFeSO4=25;//volume of FeSO4, mL

MFeSO4=nFeSO4/VFeSO4*1000;

printf("\t the molarity of FeSO4 solution is : %4.4f M\n",MFeSO4);

//End

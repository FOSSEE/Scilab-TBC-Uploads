clear
clc
X1=1.04;//solubility of  KBr in gm/gm
w=1;//amount of H20 in gm
X2=0.64;//solubility of KBr after cooling in gm/gm
M1=(w/X1)*(X1-X2);//mass of water to be added in gm
M2=(X2/w)*M1;//mass of KBr in the solution in gm
M=(X1-X2)-M2;//mass of KBr separated in gm
N1=M*(100/X1);//percent yield of pure KBr
printf('N1=%.2f',N1)
M3=(w/X1)*X2;//mass of water remained in above evaporation process in gm
M4=(X2/w)*(M3);//mass of water remained after cooling in above evaporation process in gm
M=(X2)*M4;//mass of KBr separated in second crop in gm
Mt=(X1-X2)+M;//total mass of kBr separated in two crops in gm
N2=Mt*(100/X1);//percent of KBr recovered
printf('\nN2=%.2f',N2)

//There are some errors in the solution given in textbook
//page 317

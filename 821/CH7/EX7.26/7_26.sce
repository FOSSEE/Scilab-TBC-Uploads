MW=372;//molecular weight of Li3Na3(AlF6)2 in grams//
s=0.74;//solubility of Li3Na3(AlF6)2 in g per litre//
S=s/MW;//Solubility of Li3Na3(AlF6)2 in mol per litre//
printf('Solubility of Li3Na3(AlF6)2=S=%fmol per litre',S);
Li=3*S;//Solubility of Li component in mol per litre//
Na=3*S;//Solubility of Na component in mol per litre//
AlF6=2*s;//Solubility of AlF6 component in mol per litre//
Ksp=(Li^3)*(Na^3)*(AlF6^2);//value of Solubility product//
printf('\nValue of Ksp for the reaction=Ksp=%f=7.47*10^-19',Ksp);

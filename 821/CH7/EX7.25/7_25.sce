MW=332;//molecular weight of Ag2CrO4 in grams//
s=2.5*10^-2;//solubility of Ag2CrO4 in g per litre//
S=s/MW;//Solubility of Ag2CrO4 in mol per litre//
printf('Solubility of Ag2CrO4=S=%f=7.5*10^-5mol per litre',S);
Ag=2*7.5*10^-5;//Solubility of Ag component in mol per litre//
CrO4=7.5*10^-5;//Solubility of CrO4 component in mol per litre//
Ksp=Ag*CrO4;//value of Ksp//
printf('\nValue of Ksp for the reaction=Ksp=%f=1.7*10^-12',Ksp);
MWAgCl=143.5;//Molecular weight of AgCl//
Ksp1=1.1*10^-10;//Ksp value of AgCl//
S1=sqrt(Ksp1);//Solubility of AgCl in mol per litre//
printf('\nSolubility of AgCl=S1=%f=1.05*10^-5mol per litre',S1);
s1=S1*MWAgCl;//solubility of AgCl in g per litre//
printf('\nSolubility of AgCl=s1=%f=1.50*10^-3gram per litre',s1);

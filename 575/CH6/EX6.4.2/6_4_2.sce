clc
pathname=get_absolute_file_path('6_4_2.sce')
filename=pathname+filesep()+'642.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
x=y*P/H
PBstar=10^(6.906- 1211/(T+220.8))
PTstar=10^(6.9533- 1343.9/(T+219.38))
PB=xB*PBstar
PT=(1-xB)*PTstar
Ptotal=PB+PT
yB=PB/Ptotal
yT=PT/Ptotal
printf(" \n Total system pressure=%f mm of Hg",Ptotal)
printf(" \n Compsoition of benzene=%f",yB)
printf(" \n Compsoition of toluene=%f",yT)
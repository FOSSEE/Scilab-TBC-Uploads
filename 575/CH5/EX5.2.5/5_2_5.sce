clc
pathname=get_absolute_file_path('5_2_5.sce')
filename=pathname+filesep()+'525.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
n2cap=flowinA*Dacetone/Macetone
printf(" \n Molar flowrate of Acetone=%f mol Acetone/min",n2cap)
P=Pfinal*760 + 763
y4=Pacetone/P
printf(" \n Mole fraction of Acetone in the final flow= %f mol Acetone/mol",y4)
printf(" \n Mole fraction of Nitrogen in the final flow= %f mol Nitrogen/mol",1-y4)
n3cap=flowinN/0.0224
n4cap=n2cap/y4
disp("By using Overall Molar balance,")
n1cap=n4cap-n2cap-n3cap
V1cap=n1cap*0.0224*T1*760/(1*273*P1)
printf("Volumetric Flowrate of Nitrogen = %f Nitrogen/min",V1cap)
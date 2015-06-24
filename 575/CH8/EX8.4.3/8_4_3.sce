clc
pathname=get_absolute_file_path('8_4_3.sce')
filename=pathname+filesep()+'843.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("using Trouton rule,")
deltaHvT1=0.109*T1
disp("In this case, trouton rule gives a better estimate")
disp("using Watson correction")
deltaHvT2=36.8*((Tc-T2)/(Tc-T1))^(0.38)
printf("Estimated value using Trouton rule=%f Kj/mol",deltaHvT1)
printf(" \n Estimated value using watson correction=%f Kj/mol",deltaHvT2)
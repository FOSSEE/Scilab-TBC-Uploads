clc
pathname=get_absolute_file_path('9_5_5.sce')
filename=pathname+filesep()+'955.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("part 1")
Hr=HfSalt+3*HfWater-HfAcid-3*HfBase
printf("Hr of the rxn=%f Kj/mol",Hr)
disp("part 2")
deltaH=Hr*5/3
printf("deltaH=%f Kj",deltaH)
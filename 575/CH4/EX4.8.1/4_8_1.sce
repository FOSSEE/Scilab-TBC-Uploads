clc
pathname=get_absolute_file_path('4_8_1.sce')
filename=pathname+filesep()+'481.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("part 1")
wet=xN2wet+xCO2wet+xO2wet
xN2dry=xN2wet/wet
xCO2dry=xCO2wet/wet
xO2dry=xO2wet/wet
printf(" \n xN2 dry = %f mol N2/mol dry gas",xN2dry)
printf(" \n xO2 dry = %f mol O2/mol dry gas",xO2dry)
printf(" \n xCO2 dry = %f mol CO2/mol dry gas",xCO2dry)
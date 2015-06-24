clc
pathname=get_absolute_file_path('4_8_2.sce')
filename=pathname+filesep()+'482.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
nO2Theoretical=basisButane*6.5
nAirTheoretical=nO2Theoretical*4.76
percent=(basisAir-nAirTheoretical)*100/nAirTheoretical
printf(" \n percent excess air=%f",percent)
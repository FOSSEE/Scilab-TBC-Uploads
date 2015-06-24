clc
pathname=get_absolute_file_path('4_2_2.sce')
filename=pathname+filesep()+'422.sci'
exec(filename)
printf("All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Using benzene balance,")
m2dot=inputBenzene-UpStreamBenzene
printf(" m2dot=%d kg/h",m2dot)
disp("Using Toluene balance")
m1dot=inputToluene-DownStreamToluene
printf(" m1dot= %d kg/h",m1dot)
disp("To check we can perform Overall mass balance")
clc
pathname=get_absolute_file_path('4_2_4.sce')
filename=pathname+filesep()+'424.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
ndot=rate/(1-x1)
deltaN= -vol*d*10^3 /M
tf=deltaN/(-0.1 * ndot)
printf(" \n The time Required for the Total process=%d min",tf)
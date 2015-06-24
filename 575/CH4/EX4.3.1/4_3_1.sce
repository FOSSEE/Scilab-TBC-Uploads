clc
pathname=get_absolute_file_path('4_3_1.sce')
filename=pathname+filesep()+'431.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
n2=Vdot*DH2O/MH2O
printf("n2=%f mol/min",n2)
disp("Using Water Balance,")
n3=n2/x
printf("n3=%f mol/min",n3)
disp("Using total mole balance,")
n1=(n3-n2)/(1+x1)
printf("n1=%f mol/min",n1)
disp("Using N2 balance,")
y=1-x-0.79*n1/n3
printf("y=%f mol O2/mol",y)
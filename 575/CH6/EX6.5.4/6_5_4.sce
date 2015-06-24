clc
pathname=get_absolute_file_path('6_5_4.sce')
filename=pathname+filesep()+'654.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
x=(Tf-100)*40656/(R*373.16^2)
y=m2/18.016
Ms=m1*(1-x)/(y*x)
printf(" \n Ms=%f",Ms)
deltaTm=R*(273.16)^2 *x/6009.5
Tms=0-deltaTm
printf(" \n Tms=%f",Tms)
Pstar=(1-x)*23.756
printf(" \n Solvent Vapour pressure=%f mm Hg",Pstar)
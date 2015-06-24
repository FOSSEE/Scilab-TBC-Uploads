clc
pathname=get_absolute_file_path('6_7_1.sce')
filename=pathname+filesep()+'671.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
n=P*V/(R*T)
printf(" \n No.of moles=%f mol",n)
y0=y*Pstar/Pmm
printf(" \n Y0=%f mol CCl4/mol",y0)
Pfinal=xF*Pmm
b=0.096*Pfinal
Xstar=0.794*b/(1+b)
printf(" \n Mass of CCl4 adsorbed to Carbon at equilibrium=%f g CCl4 ads/g C",Xstar)
Mads=(y0*n- xF*n)*154
printf(" \n Mass of CCl4 adsorbed=%f g",Mads)
Mc=Mads/Xstar
printf(" \n Mass of carbon Required=%f g",Mc)
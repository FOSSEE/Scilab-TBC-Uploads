clc
pathname=get_absolute_file_path('7_4_2.sce')
filename=pathname+filesep()+'742.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Ek=mdot*10^(-3)*(u2^2-u1^2)/2
Ep=mdot*g*deltaZ/10^3
Qdot=Qdot/(0.239*3600)
Hdot=Qdot-Ws-Ek-Ep
printf(" \n DeltaH=%f KW",Hdot)
Hcap=Hdot/mdot
printf("\n Specific Enthalpy=%f Kj/Kg",Hcap)
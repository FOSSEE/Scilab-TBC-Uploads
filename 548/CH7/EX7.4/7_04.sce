pathname=get_absolute_file_path('7_04.sce')
filename=pathname+filesep()+'7_04data.sci'
exec(filename)
Cmcg=Cmac+a*a1*(dh-Vh*at*(1-de)/a)+Vh*at*(It+eo)
disp(Cmcg,"Cmcg=","Cmcg=Cmac+a*a1*(dh-Vh*at(1-de)/a)+Vh*at*(It+eo)","moment coefficient about COG Cmcg:")
printf("\Answer:\n")
printf("\n\moment coefficient about center of gravity : %f \n\n",Cmcg)

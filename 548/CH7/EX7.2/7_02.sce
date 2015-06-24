pathname=get_absolute_file_path('7_02.sce')
filename=pathname+filesep()+'7_02data.sci'
exec(filename)
Cmcg=Cmac+Clwb*(dh);disp(Cmcg,"Cmcg","Cmcg=Cmac+Clwb(dh)","moment coefficient about center of gravity Cmcg")
printf("\Answer:\n")
printf("\n\moment coefficient about center of gravity : %f \n\n",Cmcg)

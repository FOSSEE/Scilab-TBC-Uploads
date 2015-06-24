pathname=get_absolute_file_path('7_07.sce')
filename=pathname+filesep()+'7_07data.sci'
exec(filename)
Sm=Hn-h;disp(Sm,"Sm=","Sm=Hn-h","static margin Sm:")
printf("\Answer:\n")
printf("\n\Static Margin : %f \n\n",Sm)

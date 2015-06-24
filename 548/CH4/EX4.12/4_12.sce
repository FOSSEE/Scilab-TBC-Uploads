pathname=get_absolute_file_path('4_12.sce')
filename=pathname+filesep()+'4_12data.sci'
exec(filename)
disp("Mach No at Throat Mt=V1/a");
Mt=V1/a;disp(Mt,"Mt=")
disp("Mach No at Throat Me=Ve/Ae");
Me=Ve/Ae;disp(Me,"Me=")
printf("\Answer:\n")
printf("\n\Mach No at throat: %f\n\n",Mt)
printf("\n\Mach No at exit: %f\n\n",Me)
pathname=get_absolute_file_path('5_08.sce')
filename=pathname+filesep()+'5_08data.sci'
exec(filename)
Cn=integrate('1-0.95*y','y',0,1.0)-integrate('1-300*y^2 ','y',0,0.1)-integrate('-2.2277+2.2277*y','y',0.1,1.0)
printf("\Answer:\n")
printf("\n\Normal force coefficient : %f \n\n",Cn)

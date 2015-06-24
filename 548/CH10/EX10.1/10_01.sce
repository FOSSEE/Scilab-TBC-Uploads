pathname=get_absolute_file_path('10_01.sce')
filename=pathname+filesep()+'10_01data.sci'
exec(filename)
dl=strain*l;disp(dl,"dl=","dl=strain*l","elongation of the rod dl:")
printf("\Answer:\n")
printf("\n\elongation of the rod under this load: %f m\n\n",dl)

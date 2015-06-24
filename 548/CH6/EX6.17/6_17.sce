pathname=get_absolute_file_path('6_17.sce')
filename=pathname+filesep()+'6_17data.sci'
exec(filename)
Sl=1.44*W^2/(g*D*S*Cl*[T-(Dr+Ur*(W-L))]);;disp(Sl,"Sl=","Sl=1.44*W^2/(g*D*S*Cl*[T-(Dr+Ur*(W-L))])","Liftoff distance Sl:")
printf("\Answer:\n")
printf("\n\Liftoff distance for the CJ-1 at se level: %f m\n\n",Sl)


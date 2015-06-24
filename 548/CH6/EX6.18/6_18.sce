pathname=get_absolute_file_path('6_18.sce')
filename=pathname+filesep()+'6_18data.sci'
exec(filename)
Sl=(Vt^2*W)/(2*g*(Dr+Ur*W));disp(Sl,"Sl=","Sl=(Vt^2*W)/(2*g*(Dr+Ur*W))","landing ground roll distance Sl:")
printf("\Answer:\n")
printf("\n\Landing ground roll distance at sea level: %f m\n\n",Sl)


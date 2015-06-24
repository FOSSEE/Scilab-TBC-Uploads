pathname=get_absolute_file_path('4_2.sce')
filename=pathname+filesep()+'4_2_data.sci'
exec(filename)
//Efficiency 
n=1-(((1/y)*(1/(r^(y-1)))*((rc^y)-1)/(rc-1)))
//Effect on efficiency
z=-((dCv)*((1-n)/n)*(y-1))*((1/y)+(log (r))-((rc^y)*(log (rc)))/((rc^y)-1))
printf("\n\nRESULT\n\n")
printf("\nEffect of efficiency of diesel cycle : %f",z*100)
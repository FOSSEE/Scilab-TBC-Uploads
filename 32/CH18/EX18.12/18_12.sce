//pathname=get_absolute_file_path('18.12.sce')
//filename=pathname+filesep()+'18.12-data.sci'
//exec(filename)
//Specific humidity(in gm/kg):
w=0.016
//Saturated partial pressure of vapour(in bar):
pvsat=0.03098
//Partial pressure of vapour(in bar):
pv=w/0.622*1.013/(1+w/0.622)
//Relative humidity:
r=pv/pvsat*100
printf("\n RESULT \n")
printf("\nPartial pressure of vapour = %f",pv)
printf("\nRelative humidity = %f percent",r)
pathname=get_absolute_file_path('9_5.sce')
filename=pathname+filesep()+'9_5_data.sci'
exec(filename)
//change in pressures
dp1=pinj1-pcyl
dp2=pinj2-pcyl
//Time taken to penetrate the same distance
t2=(rs)*t1*sqrt(dp1/dp2)
printf("\n\nRESULTS\n\n")
printf("\nTime taken to penetrate the same distance:%f\n",t2)
pathname=get_absolute_file_path('3_20.sce')
filename=pathname+filesep()+'3_20_data.sci'
exec(filename)
//Pressure at the end of compression stroke(in N/m^2)
p2=r^y*p1*10^5
//Pressure at start of expansion stroke(in N/m^2)
p3=p2
//Cutoff ratio
pm*(r-1)=p3*(rc-1)+((p3*rc-(p3/r^y)*rc^1.4)/(y-1))-((p3-(p3/r^y)*r)/(y-1))
//Air standard efficiency
n=1-(1/(y*r^(y-1))*(((rc^y)-1)/(rc-1)))
printf("\n\nRESULTS\n\n")
printf("\nCutoff ratio:%f\n",rc)
printf("\nAir standard efficiency:%f\n",n*100)
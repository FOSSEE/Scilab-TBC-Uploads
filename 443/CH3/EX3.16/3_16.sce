pathname=get_absolute_file_path('3_16.sce')
filename=pathname+filesep()+'3_16_data.sci'
exec(filename)
//Pressure at he end of compression stroke(in bar)
p2=p1*(r)^y
//Pressure at the end of expansion stroke(in bar)
p4=p2*(rc/r)^y
//Mean effective pressure(in bar)
pm=(1/(r-1))*((p2*(rc-1))+((p2*rc-p4*r)/(y-1))-(p2-(p1*r))/(y-1))
printf("\n\nRESULTS\n\n")
printf("\np2:%f\n",p2)
printf("\np4:%f\n",p4)
printf("\nMean effective pressure:%f\n",pm)
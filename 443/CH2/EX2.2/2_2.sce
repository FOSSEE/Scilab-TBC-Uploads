pathname=get_absolute_file_path('2_2.sce')
filename=pathname+filesep()+'2_2_data.sci'
exec(filename)
//Heat lost to cooling water and environment per kg
q=-(H*60)/m
//Work done per kg
w=(dU)*1000+(p1*V1-p2*V2)+0.5*(C1^2-C2^2)+q*1000
//Work transfer per second
W=(m*w)/60
//Ratio of diameters
Rd=sqrt((V1*C2)/(V2*C1))
printf("\n\nRESULTS\n\n")
printf("\nheat lost by cooling water and environment:%f\n",-q)
printf("\nwork done per kg:%f\n",w)
printf("\nwork transfer per second:%f\n",W)
printf("\npower input:%f\n",W)
printf("\nratio of diameters:%f\n",Rd)

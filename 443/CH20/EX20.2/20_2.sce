pathname=get_absolute_file_path('20_2.sce')
filename=pathname+filesep()+'20_2_data.sci'
exec(filename)
//Problem no 20.2
//Mass of air, Ma
ma=ffr/far
//Swept Volume Vs
Vs=(%pi/4)*(d*d)*(120/1000)
//Volume total Vtot
Vtot=Vs*(cr/15)
//Mass of air supplied
mas=(ma/(60*s))
//M(ref)
mref=(Vtot*(ep/(r*t)))
//Scavanging efficiency nsc
nsc=mas/mref
//Scavanging ratio
scr=(a/(60*s*mref))
printf("\n\nRESULTS\n\n")
printf("\nScavanging efficiency:%f\n",nsc)
printf("\nScavanging ratio:%f\n",scr)
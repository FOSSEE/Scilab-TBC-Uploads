//pathname=get_absolute_file_path('16.16.sce')
//filename=pathname+filesep()+'16.16-data.sci'
//exec(filename)
//Volume flow rate(in m^3/kg):
V1=0.6
//Pressures(in bar):
p1=1
p2a=2.3
r=1.4
//Ratio of V1/V2:
r1=0.7//
//Pressure at state 2(in bar):
p2=p1*(1/r1)^r
//IP required for vaned compressor(in hp):
Wv=(r/(r-1)*p1*10^2*V1*((p2/p1)^((r-1)/r)-1)+(p2a-p2)*10^2*V1*r1)/0.7457
//Power requirement when compression occurs isentropically(in hp):
Wi=(r/(r-1)*p1*10^2*V1*((p2a/p1)^((r-1)/r)-1))/0.7457
//Isentropic efficiency:
ni=Wi/Wv*100
printf("\n RESULT \n")
printf("\nIndicated power required = %f hp",Wv)
printf("\nIsentropic efficiency = %f percent",ni)
//pathname=get_absolute_file_path('7.21.sce')
//filename=pathname+filesep()+'7.21-data.sci'
//exec(filename)
//From steam tables:
v350=0.9534
v250=0.7964
v300=0.8753
v350kPa=0.76505
v250kPa=1.09575
//Volume expansivity(in 1/K):
ve=(v350-v250)/(v300*(350-250))
//Isothermal compressibility(in 1/kPa):
ic=-(v350kPa-v250kPa)/(v300*(350-250))
printf("\nRESULT")
printf("\nVolume expansivity = %f K^(–1)",ve)
printf("\nIsothermal compressibility = %f kPa^(-1)",ic)    
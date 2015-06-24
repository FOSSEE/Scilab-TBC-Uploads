//pathname=get_absolute_file_path('2.02.sce')
//filename=pathname+filesep()+'2.02-data.sci'
//exec(filename)
//Thermodynamic property at T=0:
p0=3;
//Thermodynamic property at T=100:
p100=8;

//Value of a:
a=(100-0)/(log(8)-log(3))
//Value of b:
b=0-a*log(3)
//At thermodynamic property p=6.5:
t=a*log(6.5)+b/2
printf("\n\nRESULTS\n\n")
printf("\n\nTemperature at the value of thermodynamic property (p=6.5)= %f \n\n",t)

//pathname=get_absolute_file_path('9.02.sce')
//filename=pathname+filesep()+'9.02-data.sci'
//exec(filename)
//Pressure at A(in kPa):
pa=138
//Pressure at B(in kPa):
pb=1380
//Thermal efficiency:
nt=0.5
//Mechanical efficiency:
nm=0.8
//Calorific value of fuel(in kJ/kg):
c=41800
//Adiabatic compressive index:
n=1.4
//Ratio of va to vb:
r1=(pb/pa)^(1/n)
//Compression ratio:
r=(7/8*r1-1/8)/(7/8-r1/8)
//Cut off ratio:
p=(r-1)/15+1
//Air standard efficiency for Diesel cycle:
nd=1-1/(r^(n-1)*n)*(p^n-1)/(p-1)
//Overall efficiency:
no=nd*nt*nm
//Fuel consumption,bhp/hr(in kg):
fc=75*60*60/(no*c*10^2)
printf("\nRESULT")
printf("\nCompression ratio = %f",r)
printf("\nAir standard efficiency = %f percent",nd*100)
printf("\nFuel consumption,bhp/hr = %f kg",fc)
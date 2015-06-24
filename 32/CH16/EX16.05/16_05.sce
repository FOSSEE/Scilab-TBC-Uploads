//pathname=get_absolute_file_path('16.05.sce')
//filename=pathname+filesep()+'16.05-data.sci'
//exec(filename)
//Atmospheric pressure(in kPa):
p=10^2
p1=1
p3=8
//Temperature(in K):
Ta=300
T1=Ta
T2a=273+30
Va=4
V1=Va
//Gas constant(in kJ/kg.K):
R=0.287
//Index of compression:
n=1.2
//Mass of air compressed(in kg/min):
m=p*Va/(R*Ta)
//Work input(in hp):
Wi=n/(n-1)*p1*10^2*Va*((p3/p1)^((n-1)/n)-1)/(60*0.7457)
//Optimum intercooling pressure(in bar):
p2=sqrt(p1*p3)
//Work input for 2nd stage compression(in hp):
Wii=2*n/(n-1)*p1*10^2*Va*((p3/p1)^((n-1)/(2*n))-1)/(60*0.7457)
Wii=20.29
//Volume of air inlet of HP cylinder(in  m^3/min):
V2a=p1*V1/T1*T2a/p2
//Work required(in hp):
W2=n/(n-1)*p1*10^2*V1*((p2/p1)^((n-1)/n)-1)/(60*0.7457)+n/(n-1)*p2*10^2*V2a*((p3/p2)^((n-1)/n)-1)/(60*0.7457)
W2=20.42
//Percentage saving in work:
ps=(Wi-Wii)/Wi*100
printf("\n RESULT \n")
printf("\nPercentage saving in work = %f percent",ps)
//% excess work to be done:
pe=(W2-Wii)/W2*100
printf("\nPercentage excess work to be done = %f percent",pe)
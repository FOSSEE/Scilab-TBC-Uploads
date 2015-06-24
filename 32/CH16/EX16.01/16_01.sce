//pathname=get_absolute_file_path('16.01.sce')
//filename=pathname+filesep()+'16.01-data.sci'
//exec(filename)
//Bore diameter(in m):
d=0.24
//Stroke length(in m):
l=0.36
//Compression ratio:
r=6
//Speed(in rpm):
N=120
//Index of polytropic process:
n=1.3
//Index for adiabatic process:
n1=1.4
//Pressure at state 1(in kPa):
p1=1*10^2
//Stroke volume(in m^3):
V=%pi*d^2*l/4
//Volume of air compressed per minute(in m^3/min):
v=V*N
//Mep in isothermal process(in kPa):
mepiso=p1*log(r)
//Mep in polytropic process(in kPa):
meppoly=(n/(n-1))*p1*((r)^((n-1)/n)-1)
//Mep in adiabatic process(in kPa):
mepadi=(n1/(n1-1))*p1*((r)^((n1-1)/n1)-1)
//HP for isothermal process:
HPiso=mepiso*v/(0.7457*60)
//HP for isothermal process:
HPpoly=meppoly*v/(0.7457*60)
//HP for isothermal process:
HPadi=mepadi*v/(0.7457*60)
//Isothermal efficiency for polytropic process:
npoly=HPiso/HPpoly*100
//Isothermal efficiency for adiabatic process:
nadi=HPiso/HPadi*100
printf("\n RESULT \n")
printf("\nMep : %f kPa for isothermal, %f kPa for polytropic process",mepiso,meppoly)
printf("\nHP required : %f HP for isothermal, %f HP for polytropic",HPiso,HPpoly)
printf("\nIsothermal efficiency : %f percent for polytropic process, %f percent for adiabatic process",npoly,nadi)
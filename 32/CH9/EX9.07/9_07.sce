//pathname=get_absolute_file_path('9.07.sce')
//filename=pathname+filesep()+'9.07-data.sci'
//exec(filename)
//Ratio of pressure:
rp=1.35
//Flow rate through compressor(in kg/s):
m=50
//Overall efficiency:
no=0.90
//Initial pressure(in bar):
p1=1
//Initial temperature(in K):
T1=313
//Adiabatic index of compression:
r=1.4
//Gas constant(in kJ/kg.K):
R=0.287
//Exit pressure(in bar):
p9=p1*rp^8
//Temperature at exit(in K):
T9=T1*(p9/p1)^((r-1)/r)
//Considerinf efficiency, actual temperature at exit(in K):
T9a=(T9-T1)/0.82+T1
//Actual index of compression:
n=log(p9/p1)/(log(p9/p1)-log(T9a/T1))
printf("\nRESULT")
printf("\nPressure at exit of comppressor = %f bar",p9)
printf("\nTemperature at the exit of compressor = %f K",T9a)
//Polytropic efficiency:
np=((r-1)/r)*(n/(n-1))
printf("\n\nPolytropic efficiency = %f percent",np*100)
//Temperature at state 2(in K):
T2=T1*rp^((r-1)/r)
//Actual temperature at state 2(in K):
T2a=T1*(rp)^((n-1)/n)
//Stage efficiency:
ns1=(T2-T1)/(T2a-T1)
printf("\n\nStage efficiency = %f percent",ns1*100)
//Work done by compressor(in kJ/s):
Wc=(n/(n-1))*m*R*T1*((p9/p1)^((n-1)/n)-1)
//Actual compressor work(in kJ/s):
Wca=Wc/no
printf("\n\nPower required to drive compressor = %f kJ/s",Wca)
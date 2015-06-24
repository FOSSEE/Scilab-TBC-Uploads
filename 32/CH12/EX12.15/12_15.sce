//pathname=get_absolute_file_path('12.15.sce')
//filename=pathname+filesep()+'12.15-data.sci'
//exec(filename)
//Duration of trial(in min):
t=15
//Bore diameter(in m):
d=0.25
//Stroke length(in m):
L=0.30
//Brake diameter(in m):
bd=1.5
//Net brake load(in N):
bl=300
//Speed of engine:
N=240
//Steam pressure(in bar):
p1=10
//Dryness fraction:
x=0.9
//Mep at cover end(in bar):
mep=0.9
//Steam utilised(in kg):
m1=15
//Steam consumption per hour(in kg/hr):
m=m1/t*60
//Indicated horse power(in kW):
IP=mep*10^2*L*%pi*d^2*240*2/(4*0.7457*60)
//Steam used per(hp.hr):
m2=60/IP
printf("\nRESULT\n")
printf("\nSteam used per = %f kg/hp.hr",m2)
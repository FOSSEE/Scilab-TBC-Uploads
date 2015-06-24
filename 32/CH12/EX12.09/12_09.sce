//pathname=get_absolute_file_path('12.09.sce')
//filename=pathname+filesep()+'12.09-data.sci'
//exec(filename)
//Point of sut-off:
r1=0.3
//Pressure at state 4(in bar):
p4=4
//Volume at state 4(in m^3):
V4=0.15
//Pressure at state 1(in m^3):
p1=12
//Pressure at release(in bar):
p2=5
//Indicated volume at release(in m^3):
V2=0.5
//Bore diameter(in m):
d=0.6
//Stroke length(in m):
L=1.20
//Clearance volume ratio:
c=0.10
//Mass of steam admitted(in kg/stroke):
ms=1.5
//Number of working strokes(per second):
nw=180*60
//From steam tables:
vg4=0.4625 //m^3/kg
vg12=0.16333 //m^3/kg
vg5=0.3749 //m^3/kg
//Stroke volume(in m^3):
Vs=%pi*d^2/4*L
//Clearance volume(in m^3):
V5=c*Vs
//Total volume of cylinder(in m^3):
V3=V5+Vs
//Volume at cut-off point(in m^3):
V1=V5+r1*Vs
//Mass of steam at state 4(in kg):
m4=V4/vg4
//Total mass during steam expansion(in kg):
m=m4+ms
//Dryness fraction at cut-off point:
x1=V1/(m*vg12)
//Missing quantity per hour(in kg):
mq1=(m-m*x1)*nw
//Dryness fraction at point of release:
x2=V2/(m*vg5)
//Missing quantity per hour(in kg):
mq2=(m-m*x2)*nw
//Percentage re-evaporation during expansion:
P=(mq1-mq2)/mq1*100
printf("\n RESULT \n")
printf("\nDryness fraction at cut-off = %f",x1)
printf("\nDryness fraction at release = %f",x2)
printf("\nMissing quanity at cut off = %f kg/hr",mq1)
printf("\nMissing quanity at release = %f kg/hr",mq2)
printf("\nPercentage re-evaporation = %f percent",P)
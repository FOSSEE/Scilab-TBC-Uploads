//find
clc
//solution
//given
P=1100//W
vr=27
Nw=1440//rpm
q=(%pi/180)*20
x=100//mm
//Dw=(x)^(0.875)/(1.416)//
printf("pitch circle dia is,%f mm\n",(x)^(0.875)/(1.416))
printf("pitch cirlce dia is,say 40mm\n")
Dw=40//mm
Dg=2*x-Dw//mm
Tg=2*27//27 is transmission ratio,,from table 31.2
pa=%pi*Dg/Tg//mm
pc=pa
m=pc/%pi//mm//module
DG=pc*Tg/%pi
printf("actual pitch is%f mm\n",DG)
DW=2*x-DG
printf("actual dia is,%f mm\n",DW)
b=0.73*DW
printf("face width is,%f mm\n",b)
Ng=Nw/vr//rpm
v=%pi*Dg*Ng/60//m/s'
Cv=6/(6+v)
y=0.154-(0.912/Tg)
fo=84
Wt=fo*Cv*b*%pi*m*y//N
P1=Wt*v
printf("power tran due to tangential load is,%f W\n",P1)
printf("since power tran is more then given power,hence design is safe\n")
WD=Wt/Cv//N
P2=WD*v
printf("powr due to dynamic load is,%f W\n",P2)
printf("since power tran is more then given power,hence design is safe\n")
fe=168
Ws=fe*b*%pi*m*y//N
P3=Ws*v
printf("powr due to static load is,%f W\n",P3)
P4=3650*(x)^(1.7)/(vr+ 5)
printf("power due to heat des is,%f W",P4)
printf("since power tran is more then given power,hence design is safe\n")
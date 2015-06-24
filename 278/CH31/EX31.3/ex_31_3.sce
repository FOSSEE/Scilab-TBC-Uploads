//find
clc
//solution
//given
q=(%pi/180)*20
P=10000//W
NW=1400//rpm
vr=12
x=225//mm
//1/(tan(y))^3=vr
y=(%pi/180)*23.6
printf("lead angle is ,%f  rad\n",y)
//let x/ln=u
u=(1/2/%pi)*(1/sin(y)+vr/(cos(y)))
ln=x/u
//printf("normal lead is,%f mm\n",ln)
l=ln/cos(y)
//printf("axial lead is,%f mm\n",l)
n=4
Tw=n
//pa=l/4//axial pitch
m=8//assume
pa=%pi*m
printf("axial pitch is,%f mm\n",pa)
l1=pa*n
printf("axial lead is,%f mm\n",l1)
ln1=l1*cos(y)
printf("normal lead is,%f mm\n",ln1)
x1=(ln1/2/%pi)*(1/sin(y)+vr/(cos(y)))
printf("cenetre diatance is,%f mm\n",x1)
Dw=l1/(%pi*tan(y))//mm
printf("pitch circle dia is,%f mm\n",Dw)
Lw1=pa*(4.5 + 0.02 *Tw)//using table 31.3
//this length is to be inc by 25 to 30 mm for feed marks,therefore
Lw=Lw1+25//mm
printf("length of threaded portion is,%f mm\n",Lw)
h=0.623*pa
printf("depth of tooth is,%f mm\n",h)
a=0.286*pa
printf("addendum is,%f mm\n",a)
Dow=Dw+2*a
printf("outside dia of worm is,%f mm\n",Dow)
Tg=n*vr
Dg=m*Tg
printf("pitc circle dia of worm gear si,%f mm\n",Dg)
Dog=Dg+0.8903*pa
printf("outside dia of worm gear is,%f mm\n",Dog)
Dt=Dg +0.572*pa
printf("throat dia is,%f mm\n",Dt)
b=2.15*pa + 5
printf("face width is,%f mm\n",b)
NG=NW/vr
T=P*60/(2*%pi*NG)//N-m
WT=2*T*1000/Dg//N
v=%pi*0.384*Ng/60//m/s
Cv=6/(6+v)
y1=0.154-(0.912/Tg)
fo=84
//Wt=fo*Cv*b*%pi*m*y1=84*0.72*b*m*0.135
Wt=84*0.72*59*%pi*m*0.135
printf("tangtial load actingi is %f N\n",Wt)
printf("since it is more than load acting on gear ,so desing is safe\n")
WD=Wt/Cv
printf("dynamic load is,%f N\n",WD)
printf("since WD>Wt,design is safe\n")
WS=168*b*%pi*m*y1
printf("static loac is ,%f N\n",WS)
printf("since WS>Wt,design is safe\n")
K=0.55
WW=Dg*b*K'
printf("wear laod is,%f N \n",WW)
printf("since WW>Wt,design is safe\n")
rv=%pi*Dw*NW/cos(y)/1000
u2=0.025+rv/18000
//tan(q2)=u2
q2=(%pi/180)*2.548
eff2=tan(y)/(tan(q2+y))
Qg=1.25*P*(1-eff2)
Aw=(%pi/4)*Dw^2//mm^2
Ag=(%pi/4)*Dg^2
A=Aw+Ag//mm^2
//Qd=A*(t2-t1)*378
Qd=Qg
//t2-t1=G
G=Qg/45.4
printf("temp diff is,%f degree C\n",G)


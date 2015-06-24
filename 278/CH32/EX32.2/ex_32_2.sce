//find
clc
//solution
//given
D=100//mm
L=0.125//m
p=5//N/mm^2
pm=0.75//N/mm^2
effm=0.8
m=41.7*10^-6//kg/BP/s
HCV=42*1000//kJ/kg
N=2000//rpm
ft=38
th1=sqrt((3*p*D^2)/(16*ft))
printf("thickness of head on basis of strength is,%f mm\n",th1)
n=N/2
A=%pi*D^2/4//mm^2
IP=pm*L*A*n/60
BP=effm*IP
printf("brake power is,%f W\n",BP)
C=0.05
H=C*HCV*m*BP//heat flowing piston head
k=46.6//W/m/C
//TC-TE=w
w=220
th2=H*1000/(12.56*k*w)
printf("thickness of head on basis of heat dessiapation is,%f mm\n",th2)
printf("taking large r value into consideration \n")
th=th1
printf("thickness of head is,%f mm\n",th)
tr=7
printf("thickness of ribs is,%f m\n",tr)
pw=0.035
ft1=90
t1=D*sqrt(3*pw/ft1)
//t2 lies btw 0.7 t1  to t1
t2=3//mm
//b1 lies btw th to 1.2th=16 to 19.2
b1=18//mm
//b2 lies btw 0.75t2 to t2
b2=2.5
printf("with of top land and othe ring land is,%f mm\n,%f mm\n",b1,b2)
//G1 lie sbtw 3.5t1 to 4t1
G1=12.8//mm
//G2 lies btw 0.002D to 0.004 D
G2=0.3//mm
printf("gap btw free ends of ring and btw ring and cylindr is,%f mm\n,%f mm\n",G1,G2)
u=0.1
R1=u*%pi*D^2*p/4//...eq3
//R2=pb*D*l=45*l...eq4
//from eq3 and eq4.
//l=R1/45
printf("length of skirt is,%f mm\n",R1/45)
printf("length of skirt is ,say 90mm\n")
l=90
Lp=l+(4*t2 + 3*3)+b1
printf("length of piston is,%f mm\n",Lp)
//let do be outside dia
//l1 be lenngth of pin 
pb1=25//N/mm^2
l1=0.45*D
//Load1=pb1*do*l1=1125*do
lo2=%pi*D^2*p/4
do=lo2/1125//mm
di=0.6*do
printf("inside and outside dia is,%f mm\n,%f mm\n",di,do)

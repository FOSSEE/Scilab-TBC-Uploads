//find
clc
//solution
//given
D=400//mm
L=600//mm
r=300//mm
pm=0.3//N/mm^2
p=2.5//N/mm^2
W=50//kN
//T1+T2=6.5//kN=P
P=6.5
q=(%pi/180)*35
//l/r=5
Fp=(%pi/4)*D^2*p//N
b=2*D
b1=b/2
b2=b/2
H1=Fp*b1/b/1000//kN
H2=Fp*b2/b/1000//kN
//V2=W*c1/c
//c1=c2=c/2
V2=W/2
V3=W/2
H2b=P/2
H3b=P/2
//Desing of crankshaft wen crank is at dead centre
//let dc be crankpin dia,lc be length 
fb=75//N/mm^2
//Mc=(%pi/32)*dc^3*fb=7.364*10^-3*dc^3
Mc1=H1*b2
dc=(Mc1/(7.364*10^-3))^(1/3)
printf("dia of crankpin is,%f mm\n",dc)
pb=10
lc=Fp/(dc*pb)//mm
printf("lengthb of crankipin is,%f mm\n",lc)
t=0.65*dc + 6.35
printf("thickness of crank web is,%f mm\n",t)
w=1.125*dc+12.7
printf("width of crank pin is,%f mm\n",w)
//let ds be dia of shaft
l1=2*(b/2-lc/2-t)
printf("l1 is,%f mm\n",l1)
//c=l1+300=667,take c=800
c=800
l2=l1
l3=l1
c1=c/2
c2=c/2
Mw=V3*c1*1000//N-mm
printf("bendin moment due to flywheel is,%f N-mm\n",Mw)
Mt=H3b*c1*1000//N-mm
Ms=sqrt(Mw^2 + Mt^2)//N-mm
fb1=42
printf("resultant bending moment is,%f N-mm\n",Ms)
ds=((Ms*32)/(%pi*fb1))^(1/3)
printf("dia of shaft is,%f mm\n",ds)
//Desing of crankshaftt wen crank is at an angle of max twisting moment
p1=1
Fp1=(%pi/4)*D^2*p1/1000//kN
q1=(%pi/180)*6.58
Fq1=Fp1/cos(q1)
FT1=Fq1*sin(q1+q)//kN
FR=Fq1*sin(q1+q)//kN
HT1=FT1*b1/b//kN
HT2=FT1*b2/b
HR1=FR*b1/b
HR2=FR*b2/b
//let dc1 be crankpin dia
MC1=HR1*b2//kN-mm
TC1=HT1*r//kN-mm
TE1=sqrt(MC1^2 + TC1^2)*1000//N-mm
t11=35//N/mm^2
dc1=((TE1*16)/(%pi*t11))^(1/3)
printf("dia of crankpin is,%f mm\n",dc1)
printf("take larger value dc equal to 205 into consideration\n")
//let ds1 be dai of shaft
TS1=FT1*r*1000//N-mm
TE2=sqrt(Ms^2 + TS1^2)
t22=35
ds22=(TE2*16/(%pi*t22))^(1/3)//mm
printf("shaft dia is,%f mm\n",ds22)
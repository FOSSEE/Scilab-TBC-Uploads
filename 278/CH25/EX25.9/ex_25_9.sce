//find..
clc
//solution
//given
d=450//mm
r=225//mm
Tb=225*1000//N-mm
OB=100//mm
u=0.25
ft=70//N/mm^2
fc=70//N/mm^2
t=56//N/mm^2
pb=8//N/mm^2
//let P be operating force
//ref fig 25.17
q=4.713//rad
//log(T1/T2)=u*q
//T1/T2=3.25 ...eq1
//let Tb be breaking torque
//ref fig 25.17
//(T1-T2)*r=Tb//N-mm
//T1-T2=1000//N.....eq2
//r=from eq1 and eq2
T1=1444//N
T2=444//N
//taking moment abt O
//P*500=T2*100
P=T2*100/500
//let ds be dia of shaft
//ds=[Tb*16/(%pi*t)]^(1/3)
printf("dia fo shaft is,%f mm\n",[Tb*16/(%pi*t)]^(1/3))
printf("dia of shaft is,say 30mm\n")
ds=30//mm
printf("corrsponding to dia 30mm ,we get width(w) is equal to 10 mm,and thickness 8mm\n")
//let l be length of key
w=10//mm
t1=8//mm
l1=Tb/(w*t*ds/2)//mm
printf("length on basis of shearing is,%f mm\n",l1)
l2=Tb/(t1/2*fc*ds/2)//mm
printf("length using crushing stress is,%f mm\n",l2)
printf("taking larger of two l2,in to consideration\n")
l=l2//mm
//let t2 be thickness of lever
//B be width,B=2t2
//Z=(1/6)*t2*B^2=0.67*t2^3//mm^3
M=P*500//N-mm
//fc=M/Z
//t2=(M/(fc*0.67))^(1/3)
printf("thickness of lever is,%f mm\n",(M/(fc*0.67))^(1/3))
printf("thicnkness is say 10mm\n")
t2=10//mm
printf("width of lever is,%f mm\n",2*t2)
//design of pins
//let d3 be dia and l3 be length of pins at O and B
//d3=1.25*d3
//T1=d3**l3*pb=10*d3^2
d3=sqrt(T1/10)//mm
printf("length and dia of pins is,%f mm\n,%f mm\n",1.25*d3,d3)
ti=T1*4/(2*%pi*d3^2)//N/mm62
printf("induced stress is,%f N/mm^2\n",ti)
printf("since induced stress is within permissible limit ,hence design is safe\n")


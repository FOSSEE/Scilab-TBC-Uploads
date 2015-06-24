//find...
clc
//solution
//given
Do=1.8//m
Di=1.35//m
b=0.3//m
N=250//rpm
T=15000//N-m
ftb=35//n/mm^2
ftl=40//n/mm^2
//w=1.25*h
n=6
fta=15//N/mm^2
d1=150//mm
rho=7200//kg/m^3
D=(Do+Di)/2//m
t=(Do-Di)/2//m
v=(%pi*D*N)/60//m/s
ft=rho*v^2*10^6//N/mm^2
A=b*t//m^2
Ft=ft*A*10^6//N
//let dc be core dia
//Ft=(%pi/4)*dc^2*ftb*4=110*dc^2
//dc=sqrt(Ft/110)//mm
printf("the core dia is,%f mm\n",sqrt(Ft/110))
printf("the standard core dia is 48.65mm\n")
dc=48.65//mm
//let h be depth of link and w be width of link
//w=1.25*h
//Al=w*h=1.25*h^2
//let Fmax be max tensile force 
Fmax=2*ft*A//N....eq1
//Fmax=4*ftl*Al=200*h^2...eq2
//from eq 1 and eq2 
h=46//mm
w=1.25*h//mm
printf("the heigth and width of of link is,%f mm\n,%f mm\n",h,w)
//let a1 be major and b1 be minor axis
//a1=2*b1
n=6
d=2*d1//m
M=T*(D*1000-d)/(D*n*1000)//N-mm
printf("bending moment is,%f N-mm\n",M*1000)
//Z=(%pi/32)*b1*a1^2=0.05*a1^3
//fb=M/Z
a1=(M*1000/(fta*0.05))^(1/3)//mm
b1=0.5*a1
tf=40
printf("major and minor axis is,%f mm\n,%f mm\n",a1,b1)
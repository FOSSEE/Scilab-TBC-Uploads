//find
clc
//solution
//given
W=20000//N
N=900//rpm
to=55//deg celcius
Z=0.017//kg/m/s
ta=15.5//deg celciusp=1.5//N/mm^2
t=10//deg celcius
C=1232//W/m^2/deg celcius
//from table 26.3
d=0.100//m//assume
p=1.5//N/mm^2
l=1.6*d*1000//mm
printf("length of journal is,%f mm\n",l)
pb=W/(l*d*1000)//bearig preassure
printf("bearing pressure actin is,%f N/mm^2\n",pb)
printf("since given bearing pressure is 1.5 ,hence dimension of l and d is safe\n")
//x1=Z*N/pb
//from table 26.3,operqating value of =ZN/pb=28
x1=28
//the minimum value of bearign modulus at which the oil film will break is given by
K1=x1/3
cr=0.0013//clearance ratio
//since calculated value of bearing characteristic numbr is is more then 9.33,hterfore bearignoperates in hydrodynamic conditions
K2=12.24
k=0.002
u=(33/10^8)*K2*(1/cr)+0.002
printf("coefficient of riction is,%f \n",u)
Qg=u*W*[%pi*d*N]/60//W
printf("heat generate is,%f W\n",Qg)
//Qd=C*A*(tb-ta)
//tb-ta=0.5(to-ta)=19.75
Qd=C*l*d*19.75/1000//W
printf("heat dessipated is,%f W\n",Qd)
Qa=Qg-Qd//artificial cooling req
//let m be mass of liq req
//Qt=m*S*t=m*1900*10=19000m//assume S=1900 J/kg/C
m=Qa/19000//kg/s
printf("mass of cooling liq req per sec is,%f kg/s",m)

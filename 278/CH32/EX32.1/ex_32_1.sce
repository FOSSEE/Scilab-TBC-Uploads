//find
clc
//solution
//given
BP=5000//W
N=1200//rpm
n=N/2
pm=0.35//N/mm^2
effm=0.8
//let D bebore dia
IP=BP/effm//W
//IP=pm*l*A*n/60
//A=%pi*D^2/4,l=1.5D
//IP=4.12*10^-3 *D^3
D=(IP*1000/4.12)^(1/3)//mm
printf("dia of bore dis,%f mm\n",D)
l=1.5*D
L=1.15*l
ft=42
printf("stroke length is,%f mm\n",L)
p=9*pm
C=0.1
th=D*sqrt(C*p/ft)
printf("thickness of head is,%f mm\n",th)
Fc=(%pi/4)*D^2*p//N//force on cylinder...eq1
//let ns be nu,mbr of studs
ns=6//...assume
///let dc be core dia
ft1=65//N/mm^2
//d be nominal  dia
//Fs=ns*(%pi/4)*dc^2*ft1=216*d^2....eq2...//dc=0.84*d
//using eq1 and eq2
//we get
//d=sqrt(Fc/216)
printf("nominal  dia is ,%f mm\n",sqrt(Fc/216))
printf("nominal dia is,say 14 mm\n")
d=14//mm
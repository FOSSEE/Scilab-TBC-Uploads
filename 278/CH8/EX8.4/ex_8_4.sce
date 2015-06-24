//find working stress in flange
clc
//solution
//given
//refer fig 8.12
D=200//mm
p=0.35//N/mm^2
n=8
d=16//mm
Dp=290//mm
tf=20//mm
//using table ft=14//N/mm^2 ,table 8.2 gives C=9mm
C=9//mm
ft=14//N/mm^2
t=(p*D/(2*ft))+C//mm
d1=d+2//mm//dia of bolts
D1=Dp-d1//mm
pi=3.14
F=(pi/4)*[D1]^2*p//N//force acting to separate flanges
x=90//mm
y=[Dp/2]-[D/2+t]//mm
//let fb be working stress
M=F*y/n//N-mm
//Mr=fb*Z=(1/6)*x*(tf)^2=6000*fb 
//M=6000*fb
fb=M/6000//N/mm^2
printf("the working stress is ,%f N/mm^2",fb)
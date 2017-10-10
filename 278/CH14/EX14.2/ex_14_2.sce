
clc
//solution
//given
P=10^6//W
N=2400//rpm
//Tmax=1.2*Tmean
t=60//N/mm^2
//let d be dia of shaft
Tmean=(P*60000)/(2*%pi*N)//N-mm
Tmax=12.*Tmean
//Tmax=(%pi/16)*t*d^3=8.25*d^3
d=(Tmax/11.78)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)

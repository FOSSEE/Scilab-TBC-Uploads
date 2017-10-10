
clc
//solution
//given
N=200//rpm
P=20*10^3//W
t=42//N/mm^2
//let d be dia 
T=P*60000/(2*%pi*200)//N-mm
//T=(%pi/16)*t*d^3=8.25*d^3
d=(T/8.25)^(1/3)//mm
printf("the dia of shaft is,%f mm",d)
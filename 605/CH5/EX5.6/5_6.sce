
Zo=50
Er=2.08
B=60*%pi^2/Zo/sqrt(Er)
c=3*10^8
f=2*10^9
Ee=1.7875
t=0.159*10^-6
a=5.813*10^7
fGHz=2
A=Zo/60*((Er+1)/2)^(1/2)+(Er-1)/(Er+1)*(0.23+0.11/Er)
printf("\nA=%.4f\nB=%.4f",A,B)
h=1.59*10^-3
if A>1.52 then
    W=h*(8*exp(A)/(exp(2*A)-2))
else
    W=h*(2/%pi*(B-1-log(2*B-1)+(Er-1)/2/Er*(log(B-1)+0.39-0.61/Er)))
end
printf("\nW=%.6f cm",W)

Ere=0.5*(2.08+1+(2.08-1)/sqrt(1+12/3.192094))-(2.08-1)*0.0001/4.6/sqrt(3.1921)
printf("\nEre=%.4f",Ere)
l=c/(2*f*sqrt(Ee))
printf("\nl=%.6f m",l)
We=W/h+0.3979*t/h*(1+log(2*h/t))
printf("\nWe/h=%.4f",We)
F=1+1/We*(1-1.25*t/(%pi*h)+1.25/%pi*log(2*h/t))
ac=44.1255*10^-5*F*Zo*Ere/h*sqrt(fGHz/a)*(We+0.667*We/(We+1.444))
printf("\nac=%.4f Np/m",ac)
del=0.00040
ad=10.4766*Er/(Er-1)*(Ere-1)/sqrt(Ere)*fGHz*tan(del)
printf("\nad=%.4f Np/m",ad)
B=2*%pi/(2*l)
printf("\nB=%.4f rad/m",B)
Q=B/(2*(ac+ad))
printf("\nQ=%.1f",Q)



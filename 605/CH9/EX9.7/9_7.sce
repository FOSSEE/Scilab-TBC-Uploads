
Gr=0.01
m=acosh(sqrt(10^(0.1*L)-1)/sqrt(10^(0.1*Gr-1)))/acosh(W/Wc)
printf("\nm=%.0f\n",m)
m=3
E=log(coth(Gr/17.37))
X=sinh(E/2/m)
n=3
gp=1

for p=1:1:n
    ap=sin((2*p-1)*%pi/2/m)
    bp=X^2+sin(p*%pi/m)^2
    printf("\nap=%.4f\nbp=%.4f\n",ap,bp)
end
gp=0.62425
printf("\ng0=g4=1")
printf("\np=1\tgp=0.62425")
for p=2:1:n
    gp=4*sin((2*(p-1)-1)*%pi/2/m)*sin((2*p-1)*%pi/2/m)/(X^2+sin((p-1)*%pi/m)^2)/gp
     printf("\np=%.0f\tgp=%.5f",p,gp)
end

printf("\nL1=L3=%.4e H\nC1=%.4e F",75*0.62425/(2*%pi*10^8),0.9662/(75*2*%pi*10^8))















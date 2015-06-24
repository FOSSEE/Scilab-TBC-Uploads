
m=3
for p=1:1:3
    ap=sin((2*p-1)*%pi/2/m)
    printf("\np=%.0f\tap=%.3f",p,ap)
end
Gr=3

E=log(coth(Gr/17.37))
X=sinh(E/2/m)
printf("\nE=%.4f\nX=%.4f",E,X)
for p=1:1:3
    bp=X^2+sin(p*%pi/m)^2
    printf("\np=%.0f\tbp=%.4f",p,bp)
end
gp=3.349
printf("\ng0=g4=1\ng1=3.349")
for p=2:1:3
    gp=4*sin((2*(p-1)-1)*%pi/2/m)*sin((2*p-1)*%pi/2/m)/(X^2+sin((p-1)*%pi/m)^2)/gp
    printf("\ngp=%.4f",gp)
end
printf("\nL1=L3=%.1e H\nC2=%.4e F",75*3.349/(2*%pi*10^8),0.7116/(75*2*%pi*10^8))
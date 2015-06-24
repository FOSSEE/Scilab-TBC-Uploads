R=5000
C=1.0E-6
Ie=1/1000
Vcf=Ie*R
T=R*C

t=10/1000
Vc10=Vcf*(1-exp(-t/T))
disp(Vc10)

t=20/1000
Vc20=Vcf*(1-exp(-t/T))-Vc10
disp(Vc20)
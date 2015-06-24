syms P
Wmin=P
Wmax=4*P
l=500
d=60
FS=1.3
Ksz=0.85
Ksur=0.9

sigmau=700
sigmay=500
sigmae=330
Mmax=(Wmax*l)/4
disp(Mmax,"Maximum bending moment=")
Mmin=(Wmin*l)/4
disp(Mmin,"Minimum bending moment=")
Mm=(Mmax+Mmin)/2
disp(Mm,"Mean bending moment=")
Mv=(Mmax-Mmin)/2
disp(Mv,"Variable bending moment=")
syms d
Z=(%pi/32)*d^3
disp(Z,"Section modulus=")
sigmam=Mm/Z
disp(sigmam,"Mean bending stress=")
sigmav=Mv/Z
disp(sigmav,"Variable bending stress=")
0=(sigmam/sigmay)-((sigmav*Kf)/(sigmae*Ksur*Ksz)-(1/FS)//according to Soderberg's relation
P=11982
disp(F,"According to soderbergs formula, F=")
0=(sigmam/sigmau)-((sigmav*Kf)/(sigmae*Ksur*Ksz)-(1/FS)//according to goodman's relation
P=13785
disp(F,"According to Goodman formula, F=")
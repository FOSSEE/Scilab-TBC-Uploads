V1=200
f=50
N1=150
Ac=10*5/10000


Flux_max=V1/(sqrt(2)*%pi*f*N1)
Bmax=Flux_max/Ac
Hmax=250
l=2*(25+10)+2*(20+10)
l=l/100
AT_max=Hmax*l
Im_max=AT_max/150
Im_rms=Im_max/sqrt(2)
disp(Im_rms)

Fe_loss=23000

Cv = 2*(25+2*10)*10*5 + 2*20*10*5
Cv=Cv/1000000
Cl=Fe_loss*Cv
disp(Cl)

Ii=150/V1
disp(Ii)

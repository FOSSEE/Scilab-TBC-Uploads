clear
clc

G=[100 11 .25]
M=[50  11 .2 40 .8]
xl=.05
vt=10.95

B=[100 11]
B(3)= B(1)*1e6/(sqrt(3)*B(2)*1e3)

IL=M(4)*1e6 / (sqrt(3)*vt*1e3*M(5))
Il=round(((IL/B(3) * exp(%i * acos(M(5)))))*1000)/1000

Vt=round(1e3*vt/B(2))/1e3

V=fix((Vt + Il*xl*%i)*1e4)*1e-4

M(6)=M(3) *B(1)/M(1)

xth= round( G(3) * (M(6) +xl)/(G(3) + (M(6) +xl)) *10000)/10000

If=fix(V*1e3/(%i *xth))/1e3
temp= fix(imag(If)*100)/100
If=complex(real(If), temp)
Ifg=fix((If * (M(6) +xl)/(G(3) + (M(6) +xl)))*100)/100
Ifm=round((If * (G(3)    )/(G(3) + (M(6) +xl)))*1000)/1000

Ig=(Ifg + Il) * B(3)
Im=(Ifm - Il) *B(3)

mprintf("\ntotal generator current during fault= %s A", string(round(abs(Ig)*10)/10) +'/_'+ string(round(atand(imag(Ig)/real(Ig))*10)/10))
mprintf("\ntotal motor current during fault= %s A", string(fix(abs(Im)*1)/1) +'/_'+ string(fix(atand(imag(Im)/real(Im))*10)/10 +180))

clc
clear
disp("example 4 18")
v=11 //line voltage
f=50//line frequency
l=400 //load of alternator
pf=0.8 //power factor
e=0.85//efficiency
p=l/pf
lo=l+p*sind(acosd(pf))*%i
disp("a")
printf("when pf is rased to 1 the alternator can supply %dkW for the same value of armture current hence it can supply %dKW to synchronous motor",p,p-l)
disp("b")
printf("b.h.p =%.2fHP",100*e/0.746)
kvam=p-lo
td=atand(imag(kvam)/real(kvam))
pff=cosd(td)
printf("\ncosd=%.3fleading",pff)
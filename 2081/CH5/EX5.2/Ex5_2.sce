ci=18
CI=10^((ci)/10)
q=(6*(CI))^0.25
K=ceil(q*q/3)//cluster size
disp(K,'minimum cluster size')
k=7
q1=sqrt(3*k)
c1i1=q1^4/6
C1I1=10*log10(c1i1)
if (C1I1<20) then
disp(,'cluster size cannot meet the desired C/I requirement')
C2I2=10^(20/10)
q2=(6*C2I2)^0.25
k1=ceil((q2)^2/3)
disp(k1,'nearest valid cluster size K')
else 
disp(,'cluster size determined is adequate')
end

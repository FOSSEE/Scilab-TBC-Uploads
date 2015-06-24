clc
z = 6 // number of steps
n1 = 180 // rev/min
n2 = 100 // rev/min
Rn = n1/n2 
phi = (Rn)^(1/(z-1)) // common ratio
n3 = phi*n2 // rev/min
n4 = (phi)^2*n2 // rev/min
n5 = (phi)^3*n2 // rev/min
n6 = (phi)^4*n2 // rev/min
n7 = 225 // speed of input shaft in rev/min
Ta=poly(0,'Ta')
tb=n7/n5*Ta
Ta=roots(tb+Ta-52)
tb=horner(tb,Ta)
tb = ceil(tb)
Tc=poly(0,'Tc')
td=n7/n6*Tc
Tc=roots(td+Tc-52)
td=horner(td,Tc)
Tc = ceil(Tc)
Te=poly(0,'Te') 
tf=n7/n1*Te
Te=roots(tf+Te-52)
tf=horner(tf,Te)
tf = ceil(tf)
Th=poly(0,'Th')
tj=n2/n5*Th
Th=roots(tj+Th-46)
Th = ceil(Th)
tj=horner(tj,Th)
tj = floor(tj)
Ti=poly(0,'Ti')
tg=n5/n5*Ti
Ti=roots(tg+Ti-46)
tg=horner(tg,Ti)
printf("\n Ta = %d Tb = %d \n Tc = %d Td = %d \n Te = %d tf = %d \n Th = %d Tj = %d \n Ti = %d Tg = %d" , Ta,tb,Tc,td,Te,tf,tj,Th,Ti,tg)
// 'Answers vary due to round off error'

clc
// initialization of variables
clear
E=200 //GPa
a=10 //mm
v=0.29
ci=25.072 //mm
co=25 //mm
b=50 //mm
rr=0.072 //mm
re=0.025 //mm
alpha=0.0000117 // per celcius
//calculations
E=E*10^3
p1=300 //MPa
term1=co/(E*(b^2-co^2))*((1-v)*co^2+(1+v)*b^2)
term2=-ci/(E*(ci^2-a^2))*((-(1-v)*ci^2)-(1+v)*a^2)
ps=rr/(term1+term2)

// Inner cylinder p1=0 p2=ps a=10 b=25 
// outer cylinder p1=ps p2=0 a=25 b=50 
// S_rr=(p1*a^2-p2*b^2)/(b^2-a^2)-(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
// S_th=(p1*a^2-p2*b^2)/(b^2-a^2)+(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
// results
// residual stresses for inner cylinder
p1=0
p2=ps
r=10
a=10 
b=25
S_rri1=(p1*a^2-p2*b^2)/(b^2-a^2)-(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
S_thi1=(p1*a^2-p2*b^2)/(b^2-a^2)+(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
printf('\n Inner cylinder')
printf('\n r = %d mm',r)
printf('\n S_rr|R = %d MPa,   S_th|R = %.1f MPa',S_rri1,S_thi1)
r=25
S_rri2=(p1*a^2-p2*b^2)/(b^2-a^2)-(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
S_thi2=(p1*a^2-p2*b^2)/(b^2-a^2)+(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
printf('\n r = %d mm',r)
printf('\n S_rr|R = %.1f MPa,   S_th|R = %.1f MPa',S_rri2,S_thi2)
// residual stresses for outer cylinder
p1=ps
p2=0
a=25 
b=50
r=25
S_rro1=(p1*a^2-p2*b^2)/(b^2-a^2)-(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
S_tho1=(p1*a^2-p2*b^2)/(b^2-a^2)+(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
printf('\n')
printf('\n Outer cylinder')
printf('\n r = %d mm',r)
printf('\n S_rr|R = %d MPa,   S_th|R = %.1f MPa',S_rro1,S_tho1)
r=50
S_rro2=(p1*a^2-p2*b^2)/(b^2-a^2)-(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
S_tho2=(p1*a^2-p2*b^2)/(b^2-a^2)+(a^2*b^2)/(r^2*(b^2-a^2))*(p1-p2)
printf('\n r = %d mm',r)
printf('\n S_rr|R = %.1f MPa,   S_th|R = %.1f MPa',S_rro2,S_tho2)
// AN internal pressure of 300 MPa
a=10 //mm
b=50 //mm
p1=300 //MPa
r=10
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
S_rr1=S_rr+S_rri1
S_th1=S_th+S_thi1
printf('\n')
printf('\n Inner cylinder')
printf('\n r = %d mm',r)
printf('\n S_rr = %.1f MPa,   S_th = %.1f MPa',S_rr1,S_th1)
r=25
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
S_rr2=S_rr+S_rri2
S_th2=S_th+S_thi2
printf('\n r = %d mm',r)
printf('\n S_rr = %.1f MPa,   S_th = %.1f MPa',S_rr2,S_th2)
// Outer Cyllinder
S_rr1=S_rr+S_rro1
S_th1=S_th+S_tho1
printf('\n')
printf('\n Outer cylinder')
printf('\n r = %d mm',r)
printf('\n S_rr = %.1f MPa,   S_th = %.1f MPa',S_rr1,S_th1)
r=50
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
S_rr2=S_rr+S_rro2
S_th2=S_th+S_tho2
printf('\n r = %d mm',r)
printf('\n S_rr = %.1f MPa,   S_th = %.1f MPa',S_rr2,S_th2)
//delT=u/(r*alpha)
u=rr+re
r=25
delT=u/(r*alpha)
printf('\n delT = %.1f degree Celcius',delT)




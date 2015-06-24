clc
// initialization of variables
clear
SF=1.8
a=20 //mm
b=40 //mm
Y=450 //MPa
//part (a)
tau_Y=Y/sqrt(3)
Pp=2*tau_Y*log(b/a)
S_th=2*tau_Y*(1-log(b/a))
S_rr=-Pp
S_zz=(S_th+S_rr)/2
printf('part (a)')
printf('\n S_th = %.1f MPa',S_th)
printf('\n S_zz = %.1f MPa',S_zz)
// part (b)
S_thR=S_th-Pp*(b^2+a^2)/(b^2-a^2)
S_zzR=S_zz-Pp*(a^2)/(b^2-a^2)
S_thR=S_thR/2
S_zzR=S_zzR/2
printf('\n part (b)')
printf('\n S_th|R = %.1f MPa',S_thR)
printf('\n S_zz|R = %.1f MPa',S_zzR)
// par (c)
// We need to find out p1. To do that let it be unity
p1=1
S_thR=-S_thR
S_zzR=-S_zzR
S_rr=-SF*p1
S_th=SF*p1*(b^2+a^2)/(b^2-a^2)
S_zz=SF*p1*a^2/(b^2-a^2)
// 2Y^2=(s_th-S_rr)^2+(S_rr-S_zz)^2+(S_zz-S_th)^2
// S_th=S_th*p1-S_thR
// S_zz=S_zz*p1-S_zzR
// a*p1^2+b*p+c=0
a=(S_th+SF)^2+(-SF-S_zz)^2+(S_zz-S_th)^2
c=S_thR^2+S_zzR^2+(S_thR-S_zzR)^2
b=-2*(S_th+SF)*S_thR+2*S_zzR*(-SF-S_zz)+2*(S_zz-S_th)*(S_thR-S_zzR)
c=c-2*Y^2
p11=roots([a b c])
p12=roots([a 0 -2*Y^2])
p11=p11(1)
p12=p12(1)
printf('\n Internal working pressure is %.1f MPa,',p11)
printf('\n Without residual stresses %.1f MPa',p12)






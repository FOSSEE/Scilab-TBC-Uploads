// Ex 51 Page 396

clc;clear;close;
// Given
ZA=0.15+0.5*%i;//ohm
ZB=0.1+0.6*%i;//ohm
EA=207;//V
EB=205;//V
ZL=2+1.5*%i;//ohm

IA=(EA*ZB+(EA-EB)*ZL)/(ZA*ZB+ZL*(ZA+ZB));//A
IB=(EB*ZA-(EA-EB)*ZL)/(ZA*ZB+ZL*(ZA+ZB));//A
V2=(IA+IB)*ZL;//V
fi_A=atand(imag(V2)/real(V2))-(atand(imag(IA)/real(IA)))
pf_A=cosd(fi_A);//lag
printf("pf transformer A = %.2f lag",pf_A)
fi_B=atand(imag(V2)/real(V2))-(atand(imag(IB)/real(IB)))
pf_B=cosd(fi_B);//lag
printf("\n pf transformer B = %.2f lag",pf_B)
PA=abs(V2*IA*pf_A);//W
printf("\n power output transformer A = %.f W",PA)
PB=abs(V2*IB*pf_B);//W
printf("\n power output transformer B = %.f W",PB)
//Power output ans are wrong in the book.

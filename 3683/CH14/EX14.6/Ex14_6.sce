fck=15//in MPa
fy=250//in MPa
//b=d/2
M=65//in kN-m
Mu=1.5*M//factored moment, in kN-m
d=(Mu*10^6/(0.149*fck*0.5))^(1/3)//in mm
d=445//approximately, in mm
b=d/2//in mm
Xc=0.531*d//in mm
Ast=round(0.36*fck*b*Xc/0.87/fy)//in sq mm
mprintf("b=%f mm\nd=%f mm\nAst=%f sq mm",b,d,Ast)
//answer does not match with textbook because of round-off error

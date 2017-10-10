b=300//width, in mm
d=500//effective depth, in mm
fck=20//in MPa
fy=500//in MPa
Mu=175//in kN-m
Mulim=0.133*fck*b*d^2/10^6//in kN-m
//as Mu<Mulim, beam is under-reinforced
//using Cu=Tu, Xu=0.87 fy Ast/(0.36 fck b); let Xu= a Ast
a=0.87*fy/(0.36*fck*b)
//Mu=0.87 fy Ast (d-0.416 Xu), putting Xu = a Ast, we get p Ast^2 + q Ast + r =0
p=0.87*0.416*fy*a
q=-0.87*fy*d
r=Mu*10^6
//solving the quadratic equation
Ast=round((-q-sqrt(q^2-4*p*r))/2/p)//in sq mm
mprintf("Area of steel required=%d sq mm",Ast)

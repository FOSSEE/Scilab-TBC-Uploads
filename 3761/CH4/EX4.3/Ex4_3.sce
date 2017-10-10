disp("Example 4.3")
b=300
d=550
D=600
dia=25
Ast=%pi*dia*dia*4/4
sigmacbc=7
sigmast=230
m= 280/(3*sigmacbc)

disp("Grade of Steel = Fe415","Grade of Concrete = M20","D=600mm","d=550mm","b=300mm","Bars used = 4 - 25 dia")
disp("Transformed Section Properties")
disp("Modula ratio m = 13.33 for M20")
disp("mm^2",Ast,"Area of Steel=")
disp(m,"m=")

mAst=m*Ast
//disp(mAst)
//disp("Equating Moments")
//disp("b*k*d*d/2 = mAst*(d-k*d)")
b1=(2*mAst/b)
c=(-mAst*2*d/b)
a=1
kd1=((-b1+sqrt((b1*b1)-(4*a*c)))/(2*a))
kd2=((-b1-sqrt((b1*b1)-(4*a*c)))/(2*a))
//disp("mm",kd1,"therefore, kd=")
k=kd1/d
disp("mm",k,"Transformed Section Properties, k=")
disp("Neutral Axis depth factor kb")
disp("kb=280/(280+(3*sigmast)")
kb=280/(280+(3*sigmast))
disp(kb,"kb=")
disp("Calculating for stresses")
disp("As k>kb, the section is over reinforced (WSM method)")
disp("therefore, concrete stress controls, fc=sigmacbc= 7MPa")
disp("Applying Tension force=Compressive force")
disp("fst*Ast = 0.5*sigmacbc*b*kd")
fst= 0.5*sigmacbc*b*kd1/Ast
disp("MPa",fst,"fst=")
disp("Alternatively, considering the linear stress distribution")
fc=7
fst1=(m*fc*(1-k))/k
disp("MPa",fst1,"fst=")

disp("Calculating Allowable Bending Moment")
disp("Taking moments of forces about the tension steel considered")
disp("Mall= (0.5*sigmacbc*b*kd)*(d-(kd/3)")
Mall= (0.5*sigmacbc*b*kd1)*(d-(kd1/3))
Mall1=Mall/10^6
disp("kN-m",Mall1,"Mall=")
disp("Alternatively, using the analysis aids given in TABLE A.1(a) ")
pt=1.190
disp("Muall = 1.28*bd^2")
Muall=1.28*b*d*d/10^6
disp("kNm",Muall,"Muall=")





disp("Example 4.6")
disp("Asc=2-25dia bars","Ast=3-36dia bars","Service Load Moment = 175kNm","M20 Grade of concrete and Fe250steel","sigmast=130MPa","Sigmacbc=7 MPa","dd = 50mm","d=550mm","b=300mm","Given:")
b=300
d=550
dd=50
sigmacbc=7
sigmast=130
M=175
Ast= %pi*36*36*3/4
Asc=2*%pi*25*25/4
disp("Transformed Section Properties")
m=13.33 //(280/(3*sigmacbc))
mAst=m*Ast
CSA=(1.5*m-1)*Asc
disp("mm^2",mAst,"Transformed tension steel area=")
disp("mm^2",CSA,"Transformed Compression Steel Area=")

disp("Neutral Axis Depth")
disp("Considering moments of areas about the neutral axis,")
disp("b*kd^2/2 + CSA*(kd-dd) = mAst*(d-kd)")
a=b/2
b1=(CSA+mAst)
c=-CSA*dd-mAst*d
D=b1*b1-4*a*c
kd1=(-b1+sqrt(D))/(2*a)
disp("mm",kd1,"Solving kd=")
disp("Stresses due to M=175kNm")
disp("Considering the linear stress distribution")
disp("fcsc= fc*(kd-dd/kd)")
Ccfact=0.5*b*kd1
Csfact=CSA*((kd1-dd)/kd1)
fc=(M*10^6)/(Ccfact*(d-kd1/3)+Csfact*(d-dd))
disp("MPa",fc,"fc=")
disp("Compressive Stress in Steel,fsc")
fcsc= fc*((kd1-dd)/kd1)
fsc=1.5*m*fcsc
disp("MPa",fsc,"fsc=")
disp("Tensile Stress in Steel,fst")
fst=m*fc*((d-kd1)/kd1)
disp("MPa",fst,"fst=")
fst=(fc*(Ccfact+Csfact)/Ast)
disp("MPa",fst,"Alternatively, Cc+Cs = T --> fst=")
disp("Allowable Bending Moment")
disp("For a balanced (WSM) section, kb= 280/(280+3*sigmast)")
kb=280/(280+(3*sigmast))
disp(kb,"kb=")
disp("For the given section, k =kd/d")
k=kd1/d
disp(k,"k=")
disp("Here, k >kb")
disp("Hence the section is over reinforced(WSM)")
disp("whereby fc =sigmacbc =7 MPa")
Mall=fc*(Ccfact*(d-kd1/3)+Csfact*(d-dd))/10^6
disp(Mall)

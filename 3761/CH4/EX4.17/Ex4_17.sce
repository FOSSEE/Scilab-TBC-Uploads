disp("Example 4.17")
disp("fck=20MPa","fy=415MPa","d=125mm","Ast=10-mmdia bars at 200mm spacing")
Ast=(%pi*10*10/4)*1000/200
fck=20
fy=415
d=125
disp("mm^2/m",Ast,"Ast=")
disp("a. Analysis at working loads")
disp("For M20 concrete,sigmacbc=7.0 MPa and m =13.33")
disp("For Fe415 Steel,sigmast=230 MPa and kb=280/(280+3sigmast)")
sigmacbc=7
sigmast=230
m=13.33 //for M20 concrete
b=1000
mAst=m*Ast
kb=280/(280+(3*sigmast))
disp(kb,"kb=")
disp("The neutral axis depth kd is obtained by considering moments of areas in the transformed-cracked section, and considering b=1000mm")
disp("b*(kd)^2/2 = m*Ast*(d-kd)")
a=b/2
b1=mAst
c=-mAst*d
D=b1*b1-4*a*c
kd1=(-b1+sqrt(D))/(2*a)
disp("mm",kd1,"kd=")
kbd=kb*d
disp("mm",kbd,"kbd=")
disp("kd<kbd, therefore the section is under-reinforced")
Mall=((sigmast*Ast*(d-kd1/3))/10^6)
disp("kNm/m",Mall,"M,all = ")

disp("Analaysis at ultimate limit state")
disp("Fe 415 steel, xu,max/d = 0.479")
//using formula 0.0035/(0.0055+0.87*fy)
xumax=0.479*d
disp("mm",xumax,"xu,max=")
disp("Assuming xu</xu,max and considering Cu=Tu")
xu=(0.87*fy*Ast)/(0.362*fck*b)
disp("mm",xu,"xu=")
disp("xu</xu,max, therefore ok")
disp("Accordingly,")
MuR=((0.362*fck*b*xu*(d-0.416*xu))/10^6)
disp("kNm/m",MuR,"MuR=")

disp("Alternatively")
pt=(100*Ast)/(b*d)
disp(pt,"pt=")

//Eq. pt,lim = 41.61*(fck/fy)*(xu,max/d)
ptlim = 41.61*(fck/fy)*(xumax/d)
disp(ptlim,"pt,lim=")
disp("pt<pt,lim therefore using Eq. MuR/bd^2 = 0.87*fy*pt*(1-(fy/fck)*pt)")
MuR = (0.87*fy*(pt/100)*(1-(fy/fck)*(pt/100))*b*d*d)/10^6
disp("kNm/m",MuR,"MuR=")

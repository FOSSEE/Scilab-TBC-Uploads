disp("Example 4.11")
disp("4.11.a (Referring to Example 4.9)")
disp("Grade of Steel,fy = Fe415","Grade of Concrete,fck = M20","D=600mm","d=550mm","b=300mm","Bars used = 4 - 25 dia")
b=300
d=550
D=600
fck=20
Ast=%pi*4*25*25/4
disp("mm^2",Ast,"Ast=")
disp("For Fe415 Steel,")
Es=2*10^5
fy=415
Est=0.87*fy/Es
//xumaxd=(0.0035/(0.0055+Est))
//disp(xumaxd,"xumax/d")
//xumax=xumaxd*d
//disp("mm",xumax,"xu,max=")
//disp("Assuming, xu</xu,max and applying the force equilibrium condition Cu=Tu")
//xu= (0.87*fy*Ast)/(0.362*fck*b)
xu=315
disp("mm",xu,"xu")
disp("Taking moments about the tension steel centroid")
MuR=0.362*fck*b*xu*(d-0.416*xu)/10^6
disp("kNm",MuR,"MuR=")
disp("The value of MuR can also be calculated in terms of the steel tensile stress fst, whish is less than 0.87fy, as xu>xu,max. The value of fst obtained from last itteration is obtained as 349MPa, therefore, MuR=fst*Ast*(d-0.416*xu)")
MuR1=fst*Ast*(d-0.416*xu)/10^6
disp("kNm",MuR1,"Therefore, MuR=")
disp("Alternative (using analysis aid)")
pt=(100*Ast)/(b*d)
disp(pt,"Referring Table A.2(a)-for M20 concrete and Fe415 steel for pt=")
disp("MuR/bd^2 for pt,1.18  = 3.145 and for pt, 1.20 = 3.170, therefore, for M20 concrete and Fe415 steel and pt=1.19 MuR/bd^2=")
MuR1bd2=(3.145+3.170)/2
MuR1=MuR1bd2*b*d^2/10^6
disp("kNm",MuR1,"MuR=")            

disp("Example 4.11.b, (Refering Example 4.10")
disp("Grade of Steel,fy = Fe250","Grade of Concrete,fck = M20","D=600mm","d=550mm","b=300mm","Bars used = 4 - 25 dia")
b=300
d=550
D=600
fck=20
Ast=%pi*4*25*25/4
disp("mm^2",Ast,"Ast=")
disp("For Fe415 Steel,")
Es=2*10^5
fy=250
Est=0.87*fy/Es
xumaxd=(0.0035/(0.0055+Est))
//disp(xumaxd,"xumax/d")
//xumax=xumaxd*d
//disp("mm",xumax,"xu,max=")
//disp("Assuming, xu</xu,max and applying the force equilibrium condition Cu=Tu")
xu= (0.87*fy*Ast)/(0.362*fck*b)
disp("mm",xu,"xu")
disp("mm",xu,"xu<xu,max, therefore xu=")
disp("Taking moments about the tension steel centroid")
MuR2=0.362*fck*b*xu*(d-0.416*xu)/10^6
disp("kNm",MuR2,"MuR=")

disp("Alternatively, as xu<xu,max, it follows that fst=0.87fy, and")
MuR3=0.87*Ast*fy*(d-0.416*xu)/10^6
disp("kNm",MuR3,"MuR=")
disp("pt=1.190 as calculated above")
disp("Referring to table A.2(a) for M20 concrete and Fe 250 Steel, for pt=1.180 Mu/bd^2= 2.188 and for pt= 1.20 it is = 2.219, therefore for pt=1.19, Mu/bd^2=")
MuRbd2=(2.188+2.219)/2
MuR4=MuRbd2*b*d^2/10^6
disp("kNm",MuR4)





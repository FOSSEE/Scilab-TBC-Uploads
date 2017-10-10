disp("Example 4.14")
disp("Asc=2-25dia bars","Ast=3-36dia bars","M20 Grade of concrete and Fe250steel","dd = 50mm","d=550mm","b=300mm","Given:")
b=300
d=550
dd=50
Ast= %pi*36*36*3/4
Asc=2*%pi*25*25/4
m=13.33 //(280/(3*sigmacbc))
Es=2*10^5
fck=20
fy=250
xumaxd=0.0035/(0.0055+(0.87*fy)/Es)
disp(xumaxd,"xumax/d for Fe250=")
xumax=xumaxd*d
disp("mm",xumax,"xu,max")
disp("Assuming fsc=fst=0.87*fy,, and considering force equilibrium")
disp("Cus+Cuc = Tu")
Cuc=0.362*fck*b
Cus=(0.87*fy-0.447*fck)*Asc
Tu=0.87*fy*Ast
xu=(Tu-Cus)/Cuc
disp("mm",xu,"xu=")
disp("xu<xu,max")
disp("Hence the assumption fst=0.87*fy is justified")
disp("Also Esc = 0.0035*(1-dd/xu)")
Esc=0.0035*(1-dd/xu)
Ey=0.87*fy/(Es)
disp(Esc,"Esc=")
disp(Ey,"Ey=")
disp("Therefore, fsc=0.87*fy is also justified ")
disp("Ultimate Moment of Resistance")
MuR=(Cuc*xu*(d-0.416*xu)+Cus*(d-dd))/10^6
disp("kNm",MuR,"MuR=")

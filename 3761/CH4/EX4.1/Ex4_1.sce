disp("EXAMPLE 4.1")
disp("Material Properties","Applied Moment = 50kNm","Grade of Steel = Fe415","Grade of Concrete = M20","Ast = 4-25mm dia bars","d = 550mm","D = 600mm","b = 300mm","Given:")
//disp("Given:")
b=300
d=550

disp("sigmacbc= 7 MPa")
m=280/(3*7)
disp("modular ratio , m =" +string(m))
// m= 280/(3*sigmacbc)


fcr = 0.7 * sqrt(20)
disp("modulus of rupture, fcr =" +string(fcr))
// fcr = o.7 * sqrt(Fck)

disp("Approximate Cracking Moment , assuming gross concrete section")
b=300
D=600
Z= (b*D*D)/6
disp(" in mm^3","Section Modulus Z=" + string(Z))
//Cracking Moment
Mcr= (fcr*Z)/(10^6)
disp("in kNm","Cracking Moment =" +string(Mcr))

disp("Transformed Section Properties")
diabar=25
Ast=(4*%pi*25*25)/4
disp("in mm^2","Area of Tension Steel = " +string(Ast))
disp("Transformed Area, At")
disp("At = bD + (m-1)Ast")
disp("Depth of neutral axis y")
disp("At y = (bD)(D/2)+(m-1)Ast(d)")
y=(((b*D*D)/2)+((Ast)*(m-1)*(d)))/(((b*D))+ ((m-1)*Ast))
disp("in mm","Depth of neutral axis, y = " +string(y))
yc=y
yt= D-yc
ys=d-yc

disp("Distance from NA to extreme compression fibre, yc= " +string(yc))
disp("Distance from NA to extreme tension fibre, yt=" +string(yt))
disp("Distance from NA to reinforcing steel, ys=" +string(ys))              
disp("Transformed Second Moment of Area")
It = (b*yc^3/3)+(b*yt^3/3)+ ((m-1)*Ast*ys*ys)

disp("Calculating Cracking Moment","4.1.a")
Mcra = (fcr*It/(yt*10^6))
disp("in kNm", "Cracking Moment=" +string(Mcra))

disp("Stresses due to applied moment","4.1.b")

M=50
fc = M*yc*10^6/It
disp("in MPa","Maximum Compressive Stress in Concrete, fc= " +string(fc))
fct= (M*yt*10^6/It)
disp("in MPa", "Maximum Tensile Stress in Concrete, fct=" +string(fct))

if(fct<fcr)

    disp("okay")

fst= m*fc*ys/yc
disp("Tensile Stress in Steel, fst=" +string(fst)) // Answer varies a little, calculation error in TB

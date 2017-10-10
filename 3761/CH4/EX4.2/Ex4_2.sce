disp("Example 4.2")
disp("Given Moment value = 140kNm")
disp("Grade of Steel = Fe415","Grade of Concrete = M20","D=600mm","d=550mm","b=300mm","Bars used = 4 - 25 dia")
disp("Transformed Section Properties")
disp("Modula ratio m = 13.33 for M20")
disp("Transformed Steel Area = m*Ast")
m=13.33
d=550
b=300
D=600
M=140
Ast=%pi*25*25*4/4 // Value of Ast is varying a bit b'cos of value of pi considered
mAst=m*Ast
disp(mAst) // and hence value of mAst is varying a little
disp("Equating Moments")
disp("b*k*d*d/2 = mAst*(d-k*d)")
b1=(2*mAst/b)
c=(-mAst*2*d/b)
a=1
kd1=((-b1+sqrt((b1*b1)-(4*a*c)))/(2*a))
kd2=((-b1-sqrt((b1*b1)-(4*a*c)))/(2*a))
disp("mm",kd1,"therefore, kd=")
k=kd1/d
disp("mm",k,"k=")
disp("Lever arm, jd = d(1-k/3)")
j=(1-k/3)*d
disp("mm",j,"jd=")

//Calculating Stresses

disp("Maximum Concrete Stresses")
disp("Taking moments about the tension steel centroid,")
disp("M=0.5*fc*b*kd*jd")
fc=((140*10^6)/(0.5*300*234.6*471.8))
disp("in MPa",fc,"fc=")
disp("Tensile Stress in Steel")
disp("Taking moments about the line of action of C")
fst=((M*10^6)/(Ast*j))
disp("MPa",fst,"fst=")


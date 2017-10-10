disp("Example 4.10")
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
disp(xumaxd,"xumax/d")
xumax=xumaxd*d
disp("mm",xumax,"xu,max=")
disp("Assuming, xu</xu,max and applying the force equilibrium condition Cu=Tu")
xu= (0.87*fy*Ast)/(0.362*fck*b)
disp("mm",xu,"xu")
disp("mm",xu,"xu<xu,max, therefore xu=")

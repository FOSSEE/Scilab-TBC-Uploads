disp("Example 4.9")
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
xumaxd=(0.0035/(0.0055+Est))
disp(xumaxd,"xumax/d")
xumax=xumaxd*d
disp("mm",xumax,"xu,max=")
disp("Assuming, xu</xu,max and applying the force equilibrium condition Cu=Tu")
xu= (0.87*fy*Ast)/(0.362*fck*b)
disp("mm",xu,"xu")
disp("xu>xu,max, 326.3mm>263.5mm")
disp("As xu>xu,max steel would not have yielded accordingly the strain compatibility method is adopted to obtain the correct value of xu")
disp("FIRST CYCLE")
disp("1. Assume xu = (xu+xu,max)/2 ")
xu1=(xu+xumax)/2
disp("mm",xu1,"xu,1=")
disp("2. Strain Compatibility = Est = 0.0035*(d/xu1-1)")
//Est=strainst, ephselon st
Est =0.0035*(d/xu1-1)
disp(Est,"Est=")
disp(Est,"Interpoating for value of fst, corresponding to strain ,Fe415 and Est = ")
disp("For strain, 0.00276 fst = 351.8 and for strain >/0.00380 fst=360.9  From table 3.2")
fst1=351.8
fst2=360.9
disp("fst= ")
fst=fst1+((fst2-fst1)*((Est*10^5-276)/(380-276)))
disp("MPa",fst,"fst=")
disp("Cu=Tu")
xu2=fst*(Ast/(0.362*fck*b))
disp("mm",xu2,"xu,2=")

disp("SECOND CYCLE")
disp("Assume xu= ")
xu3=(xu2+xu1)/2
disp("mm",xu3,"xu,3=")
Est1=0.0035*(d/xu3-1)
disp(Est1,"Est=")
disp(Est,"Interpoating for value of fst, corresponding to strain ,Fe415 and Est = ")
disp("For strain, 0.00276 fst = 351.8 and for strain 0.00241 fst=342.8  From table 3.2")
fst4=351.8
fst3=342.8
fst11=(fst3+(fst4-fst3)*((Est1*10^5-241)/(276-241)))
disp("MPa",fst11,"fst1=")

disp("Cu=Tu")
fact=Ast/(0.362*fck*b)
//disp(fact)
xu4=fst11*(fact)
disp("mm",xu4,"xu,4=")


disp("THIRD CYCLE")
disp("1.Assume xu=")
xu5=(xu4+xu3)/2
disp("mm",xu5,"xu,5=")
Est2=0.0035*(d/xu5-1)
disp(Est2, "Est=")
disp(Est,"Interpoating for value of fst, corresponding to strain ,Fe415 and Est = ")
disp("For strain, 0.00276 fst = 351.8 and for strain 0.00241 fst=342.8  From table 3.2")
fst4=351.8
fst3=342.8
fst12=(fst3+(fst4-fst3)*((Est2*10^5-241)/(276-241)))
disp("MPa",fst12,"fst2=")

disp("Cu=Tu")
fact=Ast/(0.362*fck*b)
//disp(fact)
xu6=fst12*(fact)
disp("mm",xu6,"xu,6=")
disp("Therefore, the final value of xu may be takaen as xu=315mm")


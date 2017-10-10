
clc
//solution
//given
lc=3000//mm//length of steel and copper bar
lst=3000//mm//length of steel bar
Ec=105//kN/mm^2//young's modulus of copper
Est=210//kN/mm^2//young's modulus of steel
b=25//mm//width
t=12.5//mm//thickness
P=50//kN//load applied
//refer fig 4.14 in book
//let dl be increace in length of compound bar
Ast=b*t//mm^2//area of steel bar
Ac=b*t//mm^2//area of copper bar
Pc=(P*Ec)/(Ec+Est)//kN//load taken by copper bar
Pst=P-Pc//kN//load taken by steel bar
dl=(Pc*lc)/(Ac*Ec)//mm//change in length 
//stresses produced in individual bars are
//since strain produced are same therefore 
//(Fst/Est)=(Fc/Ec)//since Est=2Ec,therefore Fst(stress in steel)=2*Fc(stress in copper)
P=Pst+Pc//(Fst*Ast)+(Fc*Ac)//Ast=Ac//Fst=2Fc,therefore gievn equation can ve written as
//50=2*Fc*Ac+(Fc*Ac)
Fc=50/(3*Ac)//N/mm^2//stress in copper bar
Fst=2*Fc//N/mm^2//stress in steel bar
printf("the change in lentgth of compound bar is,%f mm\n",dl)
printf("the stress in copper bar is ,%f kN/mm^2\n",Fc)
printf("the stress in steel bar is , %f kN/mm^2",Fst)
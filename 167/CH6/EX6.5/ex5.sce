//ques5
//Analysis of a Carnot Heat Engine
clear
clc
//(a) The Carnot heat engine is a reversible heat engine, and so its efficiency can be determined as
Tl=303;//K temp of sink
Th=650+273;//K temp of source
n=1-Tl/Th;//efficiency of heat engine
printf(' (a) Efficiency = %.3f \n',n);

//(b)

Qh=500;//heat of reservoir in kJ
Ql=Tl/Th*Qh;//heat of sink in kJ
printf('  (b) The amount of heat rejected,Ql by this reversible heat engine = %.0f kJ \n',Ql);
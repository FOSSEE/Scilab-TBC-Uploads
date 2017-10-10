//Example 6_3 page no:231
clc
theta=53
Vm=50//peak voltage
Im=25//peak current
Veff=Vm/sqrt(2)
Ieff=Im/sqrt(2)
Papp=Veff*Ieff
disp(Papp,"Apparent Power is (in VA)")
disp(cosd(theta),"Power Factor is")
Pav=Veff*Ieff*cosd(theta)
disp(Pav,"Average Power is (in watts)")
//value of power factor is rounded off in text book so value vary slightly

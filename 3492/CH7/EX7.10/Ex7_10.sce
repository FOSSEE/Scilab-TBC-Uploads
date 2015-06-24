clc
//Chapter7
//Ex_10
//Given
//part(C)
d=0.5 // cm
a=d/2 //in cm
t=0.5 // in cm
Ebr_X=217 // in kV/cm from table 7.5
Ebr_S=158 // in kV/cm from table 7.5
b=a+t
Vbr_X=Ebr_X*a*log(b/a)
disp(Vbr_X,"breakdown voltage of XLPE in kV is")
Vbr_S=Ebr_S*a*log(b/a)
disp(Vbr_S,"breakdown voltage of Silicone rubber in kV is")
//part(d)
//letE=epsiolon
Er_X=2.3 // for XLPE
Er_S=3.7 // for Silicone rubber
//Eair_br=Ebr
Eair_br_X=100 //in kV/cm
Eair_br_S=100 //in kV/cm
//Vair_br=Eair_br*a*log(b/a)/Er
Vair_br_X=Eair_br_X*a*log(b/a)/Er_X
disp(Vair_br_X,"Voltage for partial discharge in a microvoid for XLPE in  kV is")
Vair_br_S=Eair_br_S*a*log(b/a)/Er_S
disp(Vair_br_S, "Voltage for partial discharge in a microvoid for Silicone rubber in  kV is")

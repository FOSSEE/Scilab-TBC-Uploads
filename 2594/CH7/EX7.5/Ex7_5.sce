clc
Db=10
disp("Db = "+string(Db)+" cm^2/s") //initializiation the value of one of parametere of the transistor.
Bt=0.95
disp("Bt = "+string(Bt)) //initializiation the value of base transport factor of the transistor.
tb=10^-7
disp("tb = "+string(tb)+" s") //initializiation the value of one of parametere of the transistor.
Lp=(sqrt(Db*tb))
disp("Lp=(sqrt(Db*tb)))="+string(Lp)+" cm")//calculation
WB=(Lp*(acosh(1/Bt)))
disp("WB=(Lp*(acosh(1/Bt)))="+string(WB)+" cm")//calculation

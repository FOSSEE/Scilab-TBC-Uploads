//VSWR FOR LOAD impedence
//given
clc
Zo=100
Zl1=50
Zl2=125
VSWR=Zo/Zl1//for Zo>Zl
VSWR_1=Zl2/Zo//for Zo<Zl
disp(VSWR_1,VSWR,'THE voltage standing wave ratio for each case:')

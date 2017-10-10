
clear//

//Variable Declaration
L1=3 //Length in m
L2=1 //Length in m
L3=8 //Length in m
L4=4 //Length in m
L5=6 //Length in m

//Calculations
//Deflection midway
EIv=250*3**-1*L1**3-(50*3**-1*(L1-L2)**4)-(3925*3**-1*L1) //Deflection in N.m^3

//Deflection at E
EIv_E=250*3**-1*L3**3-(50*3**-1*(L3-L2)**4)+(50*3**-1*(L3-L4)**4)+(650*3**-1*(L3-L5)**3)-(3925*3**-1*L3) //Deflection in N.m^3

//Result
printf("\n The deflection at midspan is %0.0f N.m^3 downwards",-EIv)
printf("\n The deflection at point E is %0.0f N.m^3 downwards",-EIv_E)

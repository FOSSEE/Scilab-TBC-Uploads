clc,clear
printf('Example 6.9\n\n')

//Line AB for Altermnator 1, and AC for alternator 2.AF is at frequency x measured from A where total load is 3000 kW
BO=2000,AO=5//AF=x
DC=2000,AD=3,//AF=x

//using similarity of triangles AEF and ABO
EF_by_AF=(BO/AO)// because (EF/BO)=(AF/AO)
//using similarity of triangles AFG and ADC
FG_by_AF=(DC/AD) //because (FG/DC)=(AF/AD)

EF_by_x=EF_by_AF   //which implies EF=400*x
FG_by_x=FG_by_AF   //which implies FG=666.67*x

EF_plus_FG=3000  //total load at the frequency at P is 3000 kW
x= EF_plus_FG/(EF_by_x + FG_by_x)
EF=(BO/AO)*x
FG=(DC/AD)*x  

printf('Loads shared by machine 1 and 2 are %.0f kW and %.0f kW respectively',EF,FG)

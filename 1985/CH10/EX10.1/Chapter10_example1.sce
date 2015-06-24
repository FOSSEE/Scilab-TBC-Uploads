clc
clear
//Input data
mU235=235.044//Mass of U235 in a.m.u
mXe135=134.907//Mass of Xe135 in a.m.u
mMo98=97.906//Mass of Mo98 in a.m.u
mn=1.008665//Mass of neutron in a.m.u

//Calculations
LHS=mU235+mn//The total mass of the reactants in a.m.u
RHS=mMo98+mXe135+3*mn//The total mass of the products in a.m.u
md=LHS-RHS//Mass defect in a.m.u
E=(md*934.18)//Energy released in MeV

//Output
printf('The energy released in the nuclear fission reaction is %3i MeV',E)

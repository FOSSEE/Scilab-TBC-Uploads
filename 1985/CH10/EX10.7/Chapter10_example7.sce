clc
clear
//Input data
mH1=1.007825//Mass of 1H1 in a.m.u
mH2=2.014102//Mass of 1H2 in a.m.u
mHe3=3.01603//Mass of 2He3 in a.m.u
mHe4=4.002603//Mass of 2He4 in a.m.u

//Calculations
//For Eq.(i)
md1=(2*mH1)-mH2//Mass defect in a.m.u. Mass defect in the textbook is wrong since 2*1.007825 is taken as 2.014650 instead of 2.015650
E1=md1*931.48//Energy released in MeV

//For Eq.(ii)
md2=(mH1+mH2)-mHe3//Mass defect in a.m.u
E2=md2*931.48//Energy released in MeV

//For Eq.(iii)
md3=(2*mHe3-mHe4-2*mH1)//Mass defect in a.m.u. Mass defect in the textbook is wrong since 2*1.007825 is taken as 2.014650 instead of 2.015650
E3=md3*931.48//Energy released in MeV

E=(E1+E2+E3)//Total energy released in the above reactions in MeV

//Output
printf('Total energy released in the above reactions is %3.4f MeV',E)

//Chapter 7 Example 1//
clc
clear
// Mass defect=m, molecular mass of He=m1,atomic mass of He=m2//
//mass of proton=mp,mass of neutron=mn,mass of electron=me//
mp=1.007277;mn=1.008665;me=0.00055;// in amu//
m1=(2*mp)+(2*mn)+(2*me);
m2=4.002603; //in amu//
m=m1-m2;
printf("\n Mass Defect = %.6f amu\n",m);
//Binding energy=be//
be=m*931;// in MeV//
printf("\n Binding Energy = %.3f MeV\n",be);
//Binding energy per nucleon=bep//
bep=be/4;
printf("\n Binding Energy per nucleon = %.3f MeV\n",bep);
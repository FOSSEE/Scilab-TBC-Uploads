//ques5
//The Simple Ideal Gas Refrigeration Cycle
clear
clc
//(a) The maximum and minimum temperatures in the cycle are determined from the isentropic relations of ideal gases for the compression and expansion processes. From Table A–17E
//state 1
T1=460;//R
h1=109.90;//Btu/lbm
Pr1=0.7913;//reduced pressure
r=4;
//state 2
Pr2=r*Pr1;//r=P2/P1=4
//from table
h2=163.5;//Btu/lbm
T2=683;//R
printf('(a) Temperature T2 = %.0f R \n',T2);
//state 3
T3=540;//R
h3=129.06;//Btu/lbm from table
Pr3=1.3860;//reduced pressure
//state 4
Pr4=1/r*Pr3;//1/r = P4/P3
//from table
h4=86.7;//Btu/lbm
T4=363;//R
printf('     Temperature T4 = %.0f R \n',T4);
Ql=h1-h4;//Btu/lbm
Wturbout=h3-h4;//work output by turbine in kJ/kg
Wcompin=h2-h1;//work input by compressor in kJ/kg
Wnetin=Wcompin-Wturbout;//net work in kJ/kg
COPr=Ql/Wnetin;
printf(' (b) Coefficient of Performance = %.2f \n',COPr);
ms=0.1;//mass flow in lbm/s
Qrefs=ms*Ql;
printf(' (c) Rate of refrigeration = %.2f Bu/sec \n',Qrefs);
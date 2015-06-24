//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.44\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.44  (page no. 229) 
// Solution

//From the saturation table at 1 psia,
hf=69.74; //Btu/lbm //saturated liquid enthalpy
hfg=1036.0; //Btu/lbm //Evap. Enthalpy
hg=1105.8; //Btu/lbm //The enthalpy of saturated steam
x=0.97; //Quality
//Because the condensation process is carried out at constant pressure,the energy equation is q=deltah.
hx=hf+(x*hfg); //the initial enthalpy //Btu/lbm
printf("The initial enthalpy is %f Btu/lbm\n",hx);
//The final enthalpy is hf=69.74.So,
deltah=hx-hf; //The enthalpy difference //Btu/lbm
printf("At 1 psia,The enthalpy difference is %f Btu/lbm\n",deltah);
printf("By the computer solution,the enthalpy difference is 1004.6 Btu/lbm");
// Saturation Properties
//--------------------------
// T=101.71 degF
// P=1.0000 psia
//       z        z1         zg
// v(ft^3/lbm)   0.01614   333.55
// h(Btu/lbm)    69.725    1105.4
// s(Btu/lbm*F)  0.1326    1.9774
// u(Btu/lbm)    69.722    1043.6

//Thermo Properties
//------------------------
// T= 101.71 degF
// P= 1.0000 psia
// v= 323.55 ft^3/lbm
// h= 1074.3 Btu/lbm
// s= 1.9221 Btu/lbm*F
// u= 1014.4 Btu/lbm
// x= 0.9700

//Region:Saturated

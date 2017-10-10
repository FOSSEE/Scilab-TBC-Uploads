//Example 3.10
clear;
clc;

//Given 
delHfHCl = -92.3;//heat of formation in kJ of HCl
delHfH2O = -285.8;//heat of formation in kJ of water
delHfNaCl = -411.0;//heat of formation in kJ of NaCl
delHfNaOH = -426.7;//heat of formation in kJ of NaOH
delH1 = -75.7;//heat of reaction(i)
delH2 = -40.9;//heat of reaction (ii)
delH3 = 4.26;//heat of reaction (iii)
//To determine delH
delHf1=delH1+delHfHCl;//delH for (i) in kJ
delHf2=delH2+delHfNaOH;//delH for (ii) in kJ
delHf3=delH3+delHfNaCl;//delH for (iii) in kJ
delH=delHf3+delHfH2O-(delHf1+delHf2);//delH in kJ
mprintf('delH = %f kJ',delH);
//end
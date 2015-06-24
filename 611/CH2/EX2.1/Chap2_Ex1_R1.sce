// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-2,Example 1,Page 29
//Title:Work done by gas
//================================================================================================================
clear 
clc

//INPUT
R=8.314;//universal gas constant in J/molK
t1=300;//initial temperature of gas in K
p1=0.1;//initial pressure of the gas in MPa
p2=0.5;//pressure of gas after heating in MPa
p3=0.1;//pressure of gas after expansion in MPa
n=1;//number of moles of gas in mole

//CALCULATION
w1=0*n;//calculation of work done by the gas during heating in kJ (since dv=0)
t2=t1*(p2/p1);//calculation of temperature of gas after heating in K
t3=t2;//calculation of temperature of gas after expansion in K (constant temperature expansion)
volume2=p2/p3;//calculation of  ratio of volume of gas after expansion to the volume of gas after heating (no unit)
w2=(R*t2*log(volume2)*n)/1000;//calculation of work done  by the gas during expansion in kJ
volume3= t3/t1;//calculation of ratio of volume of gas after expansion to the final volume of gas (no unit)
w3=(R*t1*(1-volume3)*n)/1000;//calculation of work done by the gas during constant pressure compression in kJ
work_net=w1+w2+w3;//calculation of net work done by the gas for the process in kJ

//OUTPUT
mprintf('\n Work done during heating process:Work from 1-2= %d kJ \n',w1);
mprintf('\n Work done during constant temperature expansion: Work from 2-3= %f kJ \n',w2);
mprintf('\n Work done during constant pressure compression: Work from 3-1= %f kJ \n',w3);
mprintf('\n Net work done by the gas during the process= %f kJ \n',work_net);
//===============================================END OF PROGRAM===================================================

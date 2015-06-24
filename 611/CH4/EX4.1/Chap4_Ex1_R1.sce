// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 1,Page 94
//Title:Net work done by the system
//================================================================================================================
clear 
clc

//INPUT
Q1=50;//Energy added as heat in kJ when the system undergoes a process 1-2
W1=30;//Work done by the system in kJ during the process 1-2
Q2=-40;//Energy rejected as heat in kJ during the process 2-3
W2=-50;//Work done on the system in kJ during the process 2-3
Q3=0;//System undergoes an adiabatic process to return to initial state

//CALCULATION
U2_1=Q1-W1;//calculation of net change in energy in kJ during process 1-2 using Eq.(4.5)
U3_2=Q2-W2;//calculation of net change in energy in kJ during process 2-3 using Eq.(4.5)
U1_3=(-U2_1)-(U3_2);//calculation of net change in energy in kJ during process 3-1 using Eq.(4.5)
W3=Q3-U1_3;//calculation of work by the system in kJ using Eq.(4.5)
net_work=W1+W2+W3;//calculation of net work done in kJ

//OUTPUT
mprintf('\n The net work done by the system= %d kJ\n',net_work);

//===============================================END OF PROGRAM===================================================

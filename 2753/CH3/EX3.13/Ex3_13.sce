//Example 3.13: 
clc;
clear;
close;
//given data :
Ie1=20;// in mA
Ie2=15;// in mA
Ib1=0.48;// in mA
Ib2=0.32;// in mA
del_Ie=(Ie1-Ie2)*10^-3;// in A
del_Ib=(Ib1-Ib2)*10^-3;// in A
del_Ic=del_Ie-del_Ib;// in A
alfa=del_Ic/del_Ie;// 
Beta=del_Ic/del_Ib;
format('v',5)
disp(alfa,"ac current gain in common base arrangement, = ")
format('v',4)
disp(Beta,"ac current gain in common emitter arrangement, = ")

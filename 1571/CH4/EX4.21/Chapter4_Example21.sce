clc
clear

//INPUT
q=5000;//total number of molecules
e=2.7183;//constant value
t1=0.5;//distance travled to the mean free path
t2=1;//distance travelled to the mean free path

//CALCULATONS
p1=q*(e^-t1);//n0.of molecules having no collision in traversing a distance t1
p2=q*(e^-t2);//n0.of molecules having no collision in traversing a distance t2

//OUPUT
mprintf('the no. of molecules having no collision in traversing a distance o.5 is %3f \n the no. of molecules having no collision in traversing a distance 1 is %3f',p1,p2)

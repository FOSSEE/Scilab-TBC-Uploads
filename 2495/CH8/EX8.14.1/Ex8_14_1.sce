clear
clc
E3=0.54;//in V
E4=0.45;//in V
n3=4;//
n4=1;//
n1=5;//
E1=((-n3*(E3))-(n4*(E4)))/(-n1);// in V
printf('E1=%.2f V',E1)
n2=6;//
n5=1;//
E5=1.07;//in V
E2=((-n3*(E3))-(n4*(E4))-(n5*E5))/(-n2);// in V
printf('\nE2=%.2f V',E2)

//page 468

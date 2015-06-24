//Chapter 6
//Example 6-12
//ProbOnAD639A 
//Page 170,171, Figure 6-11
clear;clc;
//Given
Ei = 1 ;
t1 = 45 ; t2 = 90 ; t3 = 225 ; t4 = 405;
Vang1 = (20*10^-3)*t1 ;//example 6-12(a) 
Vang2 = (20*10^-3)*t2 ;//example 6-12(b) 
Vang3 = (20*10^-3)*t3 ;//example 6-12(c) 
Vang4 = (20*10^-3)*t4 ;//example 6-12(d)
Vo1 = Ei*sin(t1);//example 6-12(a)
Vo2 = Ei*sin(t2);//example 6-12(b)
Vo3 = Ei*sin(t3);//example 6-12(c)
Vo4 = Ei*sin(t4);//example 6-12(d)
printf ( "\n\n Input Voltages are %.4f,%.4f,%.4f,%.4f V", Vang1,Vang2,Vang3,Vang4 ) 
printf ( "\n\n Output Voltages are %.4f,%.4f,%.4f,%.4f V ", Vo1,Vo2,Vo3,Vo4 )  
printf ( "\n\n Angles are in radians " )
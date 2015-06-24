//Chapter-10,Example 1,Page 252
clc();
close();

E = 0.296    //electrode potential at 25 degree

n= 2

Cu = 0.015

E0=E-(0.0592/n)*log10(Cu)

printf('the standard potential of Cu+2 is %.5f V ',E0)

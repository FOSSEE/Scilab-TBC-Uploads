clc;
close();
clear();
//page no 607
//prob no. 19.5
fd1=.216;    //in MHz
fd2=.072;    //in MHz
Fc=2400+25 ;   //MHz
    mprintf('(a)fd1=%.2f MHz. a 00 is represented by %.3f MHz\n',fd1,Fc-fd1)
    mprintf('(b)A 01 is represented by %.3f MHz\n',Fc-fd2)
    mprintf('(c)A 10 is represented by %.3f MHz\n',Fc+fd1)
    mprintf('(b)A 11 is represented by %.3f MHz\n',Fc+fd2)    
//answer in part a is misprinted in the text

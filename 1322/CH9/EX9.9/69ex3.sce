
//2<x<7 & 4<x<9
clear;
clc;
close;
x=string(0:10);
n=string('<'+strcat(x,'---')+'>');  //0 to 10 no. line          
   n1=strsubst(n,'---3---4---5---6---','___________________');  //2<x<7
   n2=strsubst(n,'---5---6---7---8---','___________________');  //4<x<9
   n3=strsubst(n,'---5---6---','____________');      
mprintf('the  inequality which satisfies both inequalities\n2<x<7 \t%s\n\n4<x<9\t%s\nis\n4<x<7\t%s',n1,n2,n3)
      
      
     

     
     
     

     

     
     
     

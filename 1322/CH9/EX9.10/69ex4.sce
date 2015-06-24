
//-2<x<=3 & -1<x<=5
clear;
clc;
close;
x=string(-2:6);
     n=string('<'+strcat(x,'~~~')+'>');  //0 to 10 no. line
           
     n1= strsubst(n,'~~~-1~~~0~~~1~~~2~~~3','_____________________');   //-2<x<=3
     n2= strsubst(n,'~~~0~~~1~~~2~~~3~~~4~~~5','________________________');   //-1<x<=5
      
         
    n3=  strsubst(n,'~~~0~~~1~~~2~~~3','________________');
     

     mprintf('the  inequality which satisfies both inequalities\n-2<x<=3 \t%s\n\n-1<x<=5\t\t%s\nis\n-1<x<=3\t\t%s',n1,n2,n3)
      
      
     
     

      
     
     

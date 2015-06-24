
//what inequality is represented on no. line
clear;
clc;
close;
x=string(0:10);
    n=string('<'+strcat(x,'---')+'>');  //0 to 10 no. line
     
    n1=string(strsubst(n,'5---6---7---','____________'));
     
mprintf("\n  the number line \n \n  %s represents 5<=n1<8",n1)
   
     


//find x which satisfies 3*(x+5)>8*x & 5*(x-3)<27-x
clear;
clc;
close;
x=poly(0,'x');
x=1;
while(3*(x+5)>8*x)
  x=x+1;
  continue
end
mprintf("\n x<%i\n\nand",x)
while(5*(x-3)+x<27)  //on  solving the second we get
  x=x+1;
  continue
end
mprintf("x<%i \n",x)
x=string(0:10);
n=string('<'+strcat(x,'---')+'>');  //-2 to 8 no. line       
n1=strsubst(n,'0---1---2---','____________');    
mprintf('the  SOLID LINE specifies final region 0<=x<3 \n %s',n1)
     
     
     

     
     
     

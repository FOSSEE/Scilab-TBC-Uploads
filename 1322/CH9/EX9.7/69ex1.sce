
//find x which satisfies 3*x+2>8 & 5*x-3<27
clear;
clc;
close;
x=poly(0,'x');
for x=1:100       
  if(3*x+2>8)
      mprintf("x>%i\n\nand",x)//solving the first we get
       break
  end
end
x=1;
while(5*x-3<27)  //on  solving the second we get
  x=x+1;
  continue
end
mprintf("x<%i \n",x);
x=string(0:10);
n=string('<'+strcat(x,'---')+'>');//0 to 10 no. line     
n1=strsubst(n,'---4---5---','___________');
mprintf('the solid line in the number line  \n %s represents 3<x<6 ",n1)
     
     
     

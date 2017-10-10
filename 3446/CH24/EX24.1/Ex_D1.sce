// Exa D.1
// Using the shift register shown in Figure D.3, generate an m-sequence and demonstrate its properties. 

clc;
clear all;

//solution
//Referring Fig D.3
x=[0 0 1]; //Initial stage
output=x(3);
disp(" First m-sequence using 3-stage shift register.");
disp("           x1 x2 x3         output");
printf(' Initial    %d  %d  %d           %d \n ',x(1),x(2),x(3),output);
for i= 1:7
    printf('Shift %d',i);
    x(3)=x(2);
    if(x(3)==1) //TO get values in range of [-1 1] for plot
    dummy(i)=-1
else
    dummy(i)=1;
    end
    x(2)=x(1);
   if(output== 1& x(3)==1) //As new x(1)=prev stage x(3) ored                                   prev stage x(2)
       x(1)=0;
   else
       if(output== 0& x(3)==0)
           x(1)=0;
       else
           x(1)=1;
       end
   end
   
    printf('    %d  %d  %d ',x(1),x(2),x(3));
     output=x(3);
     printf('          %d',output);
      printf('\n ');
end
bar(dummy,0.2,'green');
xlabel("Time","FontSize",5);
title("7-chip first m-sequence for one T period","FontSize",5);
disp("The properties of m-sequence in Figure(0)are -");
disp("Number of -1s = 4 , Number of 1s = 3 ");
disp("Run length 1 = 2 , Run length 2 = 1");
disp("Run length  = 1");


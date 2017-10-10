// Exa D.2
// what is the location of the modulo-2 adder for the second m-sequence? Generate the second m-sequence.

clc;
clear all;

//solution
disp("The location of modulo-2 adder for the second m-sequence is shown in Figure D.5(in the book)i.e Modulo-2 adder should be between first(x1) and second(x2) shift register.");
x=[0 0 1]; //Initial stage
output=x(3);
disp("Second m-sequence usinf 3-stage register");
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
   if(output== 1& x(2)==1) //As new x(1)=prev stage x(3) ored                                   prev stage x(2)
       x(1)=0;
   else
       if(output== 0& x(2)==0)
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
figure(1);
bar(dummy,0.2,'green');
xlabel("Time","FontSize",5);
title("7-chip second m-sequence for one T period","FontSize",5);
disp("The properties of m-sequence in Figure(1)are -");
disp("Number of -1s = 4 , Number of 1s = 3 ");
disp("Run length 1 = 2 , Run length 2 = 1");
disp("Run length  = 1");


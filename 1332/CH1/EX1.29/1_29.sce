//Example 1.29
//Normalized Floating Point Representation
//Page no. 23
clc;clear;close;

function []=fp(x)
    x1=x;
    if x>0 then
        for i=1:10
            x=x/10
             if int(x)==0 then
                break
             end
        end
         printf('\n                                                               %i\nNormalized Floating Point Representation of %g = %.4f x 10',i,x1,x)
     else
         for i=1:10
            x=x*10
             if ceil(x)~=0 then
                break
             end
         end
         x=x/10;i=i-1;
         printf('\n                                                                  -%i\nNormalized Floating Point Representation of %g = %.4f x 10',i,x1,x)
    end
    
endfunction

x=[25.12,-0.00287,87000];
for i=1:3
    fp(x(i))
end
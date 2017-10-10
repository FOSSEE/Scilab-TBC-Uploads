//Chapter 05: Induction and Recursion

clc;
clear;

function res=greatestcommondivisior(a,b)
    if a==0 then
res=b
    else
res=greatestcommondivisior(modulo(b,a),a)
    end
return res
endfunction

num1=input("Enter the first number:")
num2=input("Enter the second number:")
res_gcd=greatestcommondivisior(num1,num2)
mprintf("The gcd of %d , %d is %d",num1,num2,res_gcd)

//By Using the inbuilt function,that is provided by Scilab
p=[num1,num2]
res=gcd(p)
mprintf("\nThe gcd of %d , %d is %d",num1,num2,res)

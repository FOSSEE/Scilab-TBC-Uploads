//Chapter 06: Counting

clc;
clear;

function result=combination(n,r) //function definition
i=n
num=1
denominator=1
l=(n-r)+1
u=n
for i=l:u //to compute the value of the numerator
num=num*i
end
for j=1:r //to compute the value of the denominator
denominator=denominator*j
end
result=num/denominator 
return result
endfunction

num1=input("Enter the total number of faculty in Computer Science department:")
com1=input("Enter the number of faculty to be selected for the Computer Science department:")
res1=combination(num1,com1)

mprintf("The number of combinations for the Computer Science department is %d ",res1) 

num2=input("Enter the total number of faculty in the Maths department:")
com2=input("Enter the number of faculty to be selected for the Maths department:")
res2=combination(num2,com2)

mprintf("The number of combinations for the Maths department is %d ",res2) 

final_res=res1*res2

mprintf("The total number of combinations for the selected faculties is %d",final_res)

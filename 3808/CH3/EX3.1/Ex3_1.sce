//Chapter 03: Algorithms

clc;
clear;

ar=[]
max_v=0
n=input('Enter the number of elements in the finite sequence:')
disp('Enter the elements one after the other!')
for i=1:n
    ar(i)=input(' ')
end
for i=1:n
    if ar(i)>max_v then
        max_v=ar(i)
        end
end
disp(max_v,'The largest element is:')

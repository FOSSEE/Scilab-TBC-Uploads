//Eg-8.5
//pg-373

clear
clc

A = [125 130 141 126 116 112 135 137 119 120 128 143 115 123 133];

n = length(A);

h = 3

T = A
j = 1

exec('insertion_sort.sci')

while(h>0)
    
a = 1
b = 0

for(i = 1:h)
    b = b + length(A(i:h:n))
    T(j+1,a:b) = insertion_sort(A(i:h:n))
    a = a + length(A(i:h:n))
end

h = floor(h/2)
j = j+1

end

printf('Sorting the given data using Shell sort\n')
disp(T(j,:))


    
//Chapter 03: Algorithms

clc;
clear;

function result = insertionSort(Arr)
    for i=2:length(Arr)
        A = Arr(i);
        j = i-1;
        while (j>0 & Arr(j) > A)
            Arr(j+1) = Arr(j);
            j = j-1;
        end
        Arr(j+1) = A;
    end

result = Arr;
endfunction

arr=[3 2 4 1 5]
disp(arr,"Given Array")
arr_s=insertionSort(arr)
disp(arr_s,"Sorted Array")


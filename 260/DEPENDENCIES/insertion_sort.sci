function A = insertion_sort(A)
    n = length(A);

for(i = 2:n)
    t = A(i);
    j = i;
    while((j > 1) & (A(j-1) > t))
        A(j) = A(j-1);
        j = j-1;
    end
    A(j) = t;
end

endfunction
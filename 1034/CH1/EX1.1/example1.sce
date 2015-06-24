//to do sorting of nos. contained in a list
function[]=sorting(a)
    i=1;
    [j,k]=size(a);
    j=i;
    for i=1:k-1
        for j=i:k
            if a(i)>a(j) then
            z=a(i);
            a(i)=a(j);
            a(j)=z;
        end
    end
end
for i=1:k
    disp(a(i));
end

funcprot(0);
endfunction
    //callin routine
    a=[5 7 45 23 78]
    sort=sorting(a)

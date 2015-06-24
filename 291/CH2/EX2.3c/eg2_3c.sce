age= [15 16 17 18 19 20];
frequencies = [2 5 11 9 14 13];
i=1;
for j=1:6
    for k = 1:frequencies(j)
        final_age(i) = age(j); 
        i = i +1 ;
    end;
end


final_median = median(final_age);
disp(final_median);
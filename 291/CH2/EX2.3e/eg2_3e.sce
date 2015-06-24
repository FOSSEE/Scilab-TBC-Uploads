value = [1 2 3 4 5 6];
frequencies= [9 8 5 5 6 7];
i=1;
for j=1:6
    for k = 1:frequencies(j)
        final_value(i) = value(j); 
        i = i +1 ;
    end;
end
product  = value.*frequencies;
disp(product , sum(product))

total_value = sum(frequencies);
mean_value = sum(product)/total_value ; //the answer in the textbook is incorrect
[m1 m2]= max(frequencies);
n= m2;

disp("The sample mean is")
disp(mean_value)
disp(median(final_value), "The median is")
disp(value(n) , "The mode is")
//Eg-15.5
//pg-619

clear
clc
close()

y = zeros(5,5);

y(1:5,1) = 10;
y(1:5,5) = 10;
y(1,5:4) = 0;
//y(1,2:4) = 10;

for(i = 3:5)
    for(j = 2:4)
        y(i,j) = y(i-1,j+1) + y(i-1,j-1) - y(i-2,j);
    end
end

printf('The table of the y values with different rows as different timelines :\n')

Y = y(2:5,:)
disp(Y)
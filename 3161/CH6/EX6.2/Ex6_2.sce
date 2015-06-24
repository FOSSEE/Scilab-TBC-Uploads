clc;
//page 341
//problem 6.2

//From Ex6_1 the obtained carrier amplitude is c

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//For DPSK
//Considering the initial value of the storage element to be 0 in polar and -1 in biploar
c = [1,1,-1,1,1];
y = -1;
//Let the output be y
for i = 2:5
    y(i) = c(i)*c(i-1);
end

//Converting back to binary data
for i = 1:5
    if y(i)== -1 then
        output_binary(i) = 0;
    else
        output_binary(i) = 1;
    end
end

//Now inverting the output we get:
for i = 1:5
    output_binary(i) = ~output_binary(i);
end

disp(output_binary,'The DPSK output is');


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//For DEPSK

//From example Ex6_1, we have b when initial storage value is assumed to be 1
b = [1,1,0,1,1];  

//Output y 
y = 1;
for i = 2:5
    y(i) = bitxor(b(i),b(i-1));
end

disp(y,'The DEPSK output is');









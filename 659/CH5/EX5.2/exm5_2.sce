//                     Example 5.2
// The program counts the number of boys whose weight is less than 50Kg
//and height is greater than 170cm.

count=int(0);
disp("Enter weight and height for 10 boys");
for i=1:10
    [weight,height]=scanf("%f %f");
    if(weight<50&height>170) then     // Test for weight and height
        count=count+1;
    end
end
disp("Number of boys with weight <50 kg and height>170 cm =");
disp(count)
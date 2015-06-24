// Calculate the percentage limiting error and range of resistance values
clc;
disp('decade a is set at 4000 ohm, so,error in decade a=')
Er_a=4000*0.1/100;
disp(Er_a)
disp('decade b is set at 600 ohm, so,error in decade b=')
Er_b=600*0.1/100;
disp(Er_b)
disp('decade c is set at 30 ohm, so,error in decade c=')
Er_c=30*0.1/100;
disp(Er_c)
disp('decade d is set at 9 ohm, so,error in decade d=')
Er_d=9*0.1/100;
disp(Er_d)
Er_total=Er_a+Er_b+Er_c+Er_d;
Re_le_percentage=Er_total*100/4639;
disp(Re_le_percentage,'Percentage Relative limiting error=')
Range_lower=4639-Er_total;
disp(Range_lower,'Lower value of range (ohm)=')
Range_upper=4639+Er_total;
disp(Range_upper,'upper value of range (ohm)=')
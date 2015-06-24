disp("A box contains 12 items of which three are defective")
disp("A sample of three items is selected from the box")
s=factorial(12)/(factorial(12-3)*factorial(3));   
disp(s,'number of elements in the sample space where samples are of size 3')
//X denotes the number of defective items in the sample
x=[0,1,2,3];  //range space of the random variable X
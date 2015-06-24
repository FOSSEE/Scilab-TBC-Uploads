//clear//
//Caption:Generation of bipolar output for duobinary coder
//Example6.3:Operation of Circuit in figure 6.13
//for generating bipolar format
//page 256 and page 257
//Refer Table 6.4
clc;
x = [0,1,1,0,1,0,0,0,1,1];//input binary sequence:precoder input
y(1) = 1;
for k =2:length(x)+1
  y(k) = xor(x(k-1),y(k-1));
end
y_delay = y(1:$-1);
y = y';
y_delay = y_delay';
disp(y,'Modulo-2 adder output:')
disp(y_delay,'Delay element output:')
for k = 1:length(y_delay)
  z(k) = y(k+1)-y_delay(k);
end
z = z';
disp(z,'differential encoder bipolar output in volts:')
//Result
//Modulo-2 adder output:   
//    1.    1.    0.    1.    1.    0.    0.    0.    0.    1.    0. 
// Delay element output:   
//    1.    1.    0.    1.    1.    0.    0.    0.    0.    1.  
// differential encoder bipolar output in volts:   
//    0.  - 1.    1.    0.  - 1.    0.    0.    0.    1.  - 1. 

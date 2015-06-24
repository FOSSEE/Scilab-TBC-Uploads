I1 = 10; //peak value of i1
I2 = 20; //peak value of i2
theta = %pi/3; //phase difference between i1 and i2 
// complex representation of the two currents 
i1 = complex(10); 
i2 = complex(20*cos(%pi/3),20*sin(%pi/3));

i = i1 + i2 ; //resultant current 
I = sqrt (real(i)^2 + imag(i)^2); //calculating the peak value of the resultant current by using its real and imaginary parts 
phi = atan(imag(i)/real(i)); //calculatig the phase of the resultant current by using its real and imaginary parts 
disp(i,"resultant current = ")
disp(I,"peak value of the resultant current = ")
disp(phi,"phase of the resultant current = ")
//result : i = Isin(wt + phi)

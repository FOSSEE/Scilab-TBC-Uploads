I1 = 3; //peak value of i1
I2 = 5; //peak value of i2
I3 = 6; //peak value of i3
theta1 = %pi/6; //phase difference between i2 and i1 
theta2 = -2*%pi/3; //phase difference between i3 and i1
// complex representation of the currents
i1 = complex(3);
i2 = complex(5*cos(%pi/6),5*sin(%pi/6));
i3 = complex(6*cos(-2*%pi/3),6*sin(-2*%pi/3));

i = i1 + i2 + i3; //resultant current 
I = sqrt (real(i)^2 + imag(i)^2); //calculating the peak value of the resultant current by using its real and imaginary parts
phi = atan(imag(i)/real(i)); //calculatig the phase of the resultant current by using its real and imaginary parts 
disp(I,"peak value of the resultant current = ")
disp(phi,"phase of the resultant current = ")
//result : i = Isin(wt + phi)
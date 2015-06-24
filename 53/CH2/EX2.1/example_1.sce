//example1:

printf(" Given:")
disp("value of A=1000")//To display given values
A=1000
disp("Magnitude of closed loop gain with feedback,Af=10")
Af=10
disp("Af=(A)/(1+A*b)")//standard formula for closed loop gain 
disp("b=((A/Af)-1)*(1/A)")
b=((A/Af)-1)*(1/A)
printf(' The value of b is %f',b)
//if,A becomes 900angle(-30 degrees)
A=900*cos(-%pi/6)+%i*900*sin(-%pi/6) 
disp("If,A becomes 900angle(-30 degrees)")
disp("Af=(A)/((1+A*b))")//standard formula for closed loop gain 
Af=(A)/((1+A*b))
r=real(Af)//To get real part of Af
i=imag(Af)//To get imaginary part of Af
printf(' The value of Af is (%f)+i(%f)',r,i)//to display value of Af
t=tan(i/r)//to get angle in radians of Af
t=t*180/%pi//to get angle in degrees
m=abs(Af)//to get magnitude of Af
printf('\n Af=%fangle(%f degrees)',m,t)
printf('\n Af=10.004angle(-0.32 degrees)')//rounding to 3 digits
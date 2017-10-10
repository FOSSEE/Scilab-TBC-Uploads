//Example 2.13
x_0=0;//Position at the start of the ramp (m)
x=200;//Position at the end of the ramp (m)
v_0=10;//Initial velocity (m/s)
a=2;//Acceleration (m/s^2)
//Use the equation x=x_0+v_0*t+(1/2)*a*t^2 and rearrange to form a quadratic equation with t as the variable
//(1/2)*a*t^2+v_0*t+(x_0-x)=0
p=[((1/2)*a) (v_0) (x_0-x)];//Coefficients of the polynomial
r=roots(p);//Roots of the polynomial)
//The roots are complex-encoded due to rounding off errors. This may be checked by using
//disp(isreal(r(1,1)))
//disp(isreal(r(2,1)))
//which result in 'T' if real and 'F' if an imaginary part is involved 
if real(r(2,1))<0//Taking the real part
    printf('Time taken to travel 200m up the ramp = %0.1f s',r(1,1))
else
    printf('Time taken to travel 200m up the ramp = %0.1f s',r(2,1))
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

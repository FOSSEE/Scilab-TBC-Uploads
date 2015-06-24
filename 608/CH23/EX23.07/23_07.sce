//Problem 23.07: Determine (-2 + i3)^5 in polar and in cartesian form.

//initializing the variables:
z = -2 + %i*3;

//calculation:
zc = z^5
x = real(zc)
y = imag(zc)
r = (x^2 + y^2)^0.5
theta = atan(y/x)*180/%pi
if ((x<0)&(y<0)) then
    theta = theta -180;
elseif ((x<0)&(y>0)) then
    theta = theta +180;
end

printf("\n\n Result \n\n")
printf("\n Z is %.0f + (%.0f)i", x,y)
printf("\n ZT is (%.1f/_%.2f°)", r,theta)
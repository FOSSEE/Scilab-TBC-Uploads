//Example 10.8
// Pole-Zero Pattern of a Fifth Order Network
s=poly(0,'s')
num=s^4+16*s^3+164*s^2;
K=-5;
den=(s+32)*(s^2+36)*(s^2+40*s+400)
H=(num*K)/den;// transfer functions
z=roots(num); // zeros of network
p=roots(den);// poles of network
disp(z,"Zeros of network functions=")
disp(p,"Poles of network functions=")

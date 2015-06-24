// example 6.15
//caption: solving ODE by tailor series method
// u'=t^2+ u^2,  u0=0;

t=0;U=0;                   //at t=0, the value of u is 0
U1=0;                  // u1 is the 1st derivatove of the funtion u 
U2=2*t+2*U*U1                // U2 ---- 2nd derivative
U3=2+2*(U*U2+U1^2)
U4=2*(U*U3+3*U1*U2)
U5=2*(U*U4+4*U1*U3+3*U2^2)
U6=2*(U*U5+5*U1*U4+10*U2*U3)
U7=2*(U*U6+6*U1*U5+15*U2*U4+10*U3^2)
U8=0;
U9=0;
U10=0;
U11=2*(U*U10+10*U1*U9+45*U2*U8+120*U3*U7+210*U4*U6+126*U5^2)
                                 // U11 is the 11th derivative of u


taylor(1)                             
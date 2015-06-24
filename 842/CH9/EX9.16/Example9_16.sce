//clear//
//Example9.16:Initial Value Theorem of Lapalace Transform
syms s;
num =poly([12 5 2],'s','coeff')
den =poly([20 14 4 1],'s','coeff')
X = num/den
disp (X,"X(s)=")
SX = s*X;
Initial_Value =limit(SX,s,%inf); 
disp(Initial_Value,"x(0)=")
//Result
//(2*%inf^3+5*%inf^2+12*%inf)/(%inf^3+4*%inf^2+14*%inf+20) =2

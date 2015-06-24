//Initial and final Value Theorem of Lapalace Transform
syms s;
num =poly([30 20],'s','coeff')
den =poly([0 5 2 1],'s','coeff')
X = num/den
disp (X,"X(s)=")
SX = s*X;
Initial_Value =limit(SX,s,%inf);
final_value =limit(SX,s,0); 
disp(Initial_Value,"x(0)=")
disp(final_value,"x(inf)=")
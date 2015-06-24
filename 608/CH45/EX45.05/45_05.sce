//Problem 45.05:  A series L –R–C circuit has inductance, L = 2 mH, resistance, R = 1 kohm and capacitance, C = 5 μF. (a) Determine whether the circuit is over, critical or underdamped. (b) If C = 5 nF, determine the state of damping.

//initializing the variables:
L = 0.002 // in Henry
R = 1000; // in Ohm
C1 = 5E-6; // in farad
C2 = 5E-9; // in farad

//calculation:
a = (R/(2*L))^2
b = 1/(L*C1)
if (a>b) then
	s1 = "overdamped";
elseif (a<b) then
	s1 = "underdamped";
else
	s1 = "critically damped";
end
c = 1/(L*C2)
if (a>c) then
	s2 = "overdamped";
elseif (a<c) then
	s2 = "underdamped";
else
	s2 = "critically damped";
end
    
printf("\n\n Result \n\n")
printf("\n  circuit is %s",s1)
printf("\n  if C = 5 nF, circuit is %s",s2)
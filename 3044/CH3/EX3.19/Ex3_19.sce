//Variable Declaration
p1 = 0.65   // probability of event C
p2 = 0.40   // probability of event D
p3 = 0.40   // probability of event C and D both Occuring symultanously

//Calculation
// two events are independent if P(C)*P(D)=P(C and D)
Mul = p1*p2

//Results
if(Mul==p3) then
    printf ( "%.2f is equal to %.1f Thus C and D are INDEPENDENT EVENTS",p1*p2,p3)
else
    printf ( "%.2f is not equal to %.1f Thus C and D are DEPENDENT EVENTS",p1*p2,p3)
end

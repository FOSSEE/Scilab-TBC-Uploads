//Page Number: 6.21
//Example 6.16
clc;
//Given
p=0.4;
Pp=p;
q=0.3;
Pn=q;
a=1; //i start value
b=6; //i end value
//(a)Probabilty that all pulses are positive
s=1;
for i=a:b
    s=s*Pp;
    end
disp(s,'Probabilty that all pulses are positive:');

//(b)Pulses are positive ,positive, positive, zero,zero,negative
Pz=1-(p+q);
s1=(Pp^3)*(Pz^2)*Pn;
disp(s1,'Probabilty that all pulses are positive ,positive, positive, zero,zero,negative:');

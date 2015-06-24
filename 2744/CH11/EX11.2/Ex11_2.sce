clear;
clc;
t = 1/2;// inches
d1= 7/8;// inches
p1 = 5/2;// inches
d2= 9/8;// inches
p2 = 7/2;// inches
f_t = 8;// tons/in^2
f_s = 6;// tons/in^2
f_b = 10;// tons/in^2

P_t1 = (p1-d1)*t*f_t;// tons
P_s1 = 0.25*%pi*d1^2 *f_s;// tons
P_b1 = d1*t*f_b;//tons
P1 = p1*t*f_t;// tons
n1 = min(P_t1,P_s1,P_b1)/P1 ;// efficiency
printf('The efficiency of first joint = %.2f = %d percentage',n1,n1*100);

P_t2 = (p2-d2)*t*f_t;// tons
P_s2 = 0.25*%pi*d2^2 *f_s;// tons
P_b2 = d2*t*f_b;//tons
P2 = p2*t*f_t;// tons
n2 = min(P_t2,P_s2,P_b2)/P2 ;// efficiency
printf('\n The efficiency of second joint = %.3f = %.1f percentage\n',n2,n2*100);

if n2 > n1 then
    printf(' The second joint, with its higher efficiency, is stronger');
else
    printf(' The first joint, with its higher efficiency, is stronger');
end

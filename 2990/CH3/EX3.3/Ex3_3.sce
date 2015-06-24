
clc; funcprot(0);
// Initialization of Variable
//alpha=A and beta=B and those are angles
AB=1525.456;//distance in m
BC=2176.945;//distance in m
CD=1697.435;//distance in m
AD=2401.435;//distance in m
AC=3073.845;//distance in m
BD=2483.115;//distance in m
pi=3.14;
//calculation
A1=acos((CD**2+AC**2-AD**2)/(2*CD*AC));
A1=A1*180/pi;
A2=acos((AD**2+BD**2-AB**2)/(2*AD*BD));
A2=A2*180/pi;
A3=acos((AB**2+AC**2-BC**2)/(2*AB*AC));
A3=A3*180/pi;
A4=acos((BC**2+BD**2-CD**2)/(2*BC*BD));
A4=A4*180/pi;
B1=acos((CD**2+BD**2-BC**2)/(2*CD*BD));
B1=B1*180/pi;
B2=acos((AD**2+AC**2-CD**2)/(2*AD*AC));
B2=B2*180/pi;
B3=acos((AB**2+BD**2-AD**2)/(2*AB*BD));
B3=B3*180/pi;
B4=acos((AC**2+BC**2-AB**2)/(2*AC*BC));
B4=B4*180/pi;
e1=360-A1-A2-A3-A4-B1-B2-B3-B4;//error
e2=A1+B1-A3-B3;//error
e3=A2+B2-A4-B4;//error
//angle update
A1=A1+e1/8-e2/4;
A3=A3+e1/8+e2/4;
B1=B1+e1/8-e2/4;
B3=B3+e1/8+e2/4;
A2=A2+e1/8-e3/4;
B2=B2+e1/8-e3/4;
A4=A4+e1/8+e3/4;
B4=B4+e1/8+e3/4;
//updating sides
AD=1525.456*sin(B3*pi/180)/sin(A2*pi/180);
disp("equation for B2 is wrong")
disp(AD,"corrected length of AD in m")
BD=1525.456*sin(A3*pi/180+B3*pi/180)/sin(A2*pi/180);
disp(BD,"corrected length of BD in m")
AC=1525.456*sin(A4*pi/180+B3*pi/180)/sin(B4*pi/180);
disp(AC,"corrected length of AC in m")
BC=1525.456*sin(A3*pi/180)/sin(B4*pi/180);
disp(BC,"corrected length of BC in m")
CD=BC*sin(A4*pi/180)/sin(B1*pi/180)
disp(CD,"corrected length of CD in m")
disp("answers differ slightly due to value of pi");
//equation for B2 is wrong
clear()

clc
s1 = 50 // diameter of step1 in mm
s2 = 80 // diameter of step2 in mm
d = (s1*s2)^(1/2) // mm
i = (0.45*(d)^(1/3)+0.001*d)/10^3 // mm
t1 = 25*i // tolerence for hole in mm
t2 = 16*i // tolerence for shaft in mm
a1 = 0 // fundamental deviation for hole in mm
a2 = 5.5*(d)^0.41 // fundamental deviation for shaft in microns
a2 = a2/10^4 // mm
h1 = 60 // low limit of hole in mm
h2 = h1+t1 // high limit of tolerence in mm
s1 = h1 - t2 // high limit of shaft in mm
s2 = s1-t2 // low limit of shaft in mm
printf("\n Tolerence for hole = %0.3f mm\n Tolerence for shaft = %0.3f mm" , t1 ,t2)
printf("\n Fundamental deviation for hole = %0.2f mm\n Fundamental deviation for shaft = %0.3f mm" ,a1 , a2 )
printf("\n Low limit of hole = %d mm\n High limit of hole = %0.3f mm\n High limit of shaft = %0.2f mm\n Low limit of hole = %0.2f mm" ,h1 ,h2 , s1 , s2)
// Answers vary due to round off error

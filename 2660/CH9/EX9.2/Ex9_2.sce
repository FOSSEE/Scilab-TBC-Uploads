clc
t = 0.075 // tolerence in mm
h2 = 75 // low limit of hole in mm
a = 0.10 // allowance in mm
h1 = h2+t  // high limit of hole in mm
s1 = h2-a // high limit of shaft in mm
s2 = s1-t // low limit of shaft in mm
printf("\n High limit of hole = %0.3f mm\n High limit of shaft = %0.2f mm\n Low limit of shaft = %0.3f mm" ,h1 ,s1 , s2)

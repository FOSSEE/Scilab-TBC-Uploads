clc
t = 0.225 // tolerence in mm
h2 = 75 // low limit of hole in mm
a = 0.0375 // interference in mm
h1 = h2+t  // high limit of hole in mm
s2 = h1+a // low limit of shaft in mm
s1 = s2+t // high limit of shaft in mm
printf("\n High limit of hole = %0.3f mm\n Low limit of shaft = %0.4f mm\n High limit of shaft = %0.4f mm" ,h1 ,s2 , s1)

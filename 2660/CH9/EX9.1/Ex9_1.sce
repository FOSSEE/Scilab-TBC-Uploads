clc
h1 = 37.52 // high limit of hole in mm
h2 = 37.50 // low limit of hole in mm
s1 = 37.47 // high limit of shaft in mm
s2 = 37.45 // low limit of shaft in mm
ht = h1-h2 // hole tolerence in mm
st = s1-s2 // shaft tolerence in mm
a = h2-s1 // allowance in mm
printf("\n Hole tolerence = %0.2f mm\n Shaft tolerence = %0.2f mm\n Allowance = %0.2f mm" ,ht ,st ,a)

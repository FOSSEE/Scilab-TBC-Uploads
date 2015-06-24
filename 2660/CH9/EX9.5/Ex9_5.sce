clc
b = 30 // basic size in mm
s1 = 0.005 // maximum limit of shaft in mm
s2 = 0.018 // minimum limit of shaft in mm
h1 = 0.020 // maximum limit of hole in mm
h2 = 0.0 // minimum limit of hole in mm
t1 = s2-s1 // shaft tolerence in mm
t2 = h1-h2 // hole tolerence in mm
Sh = b-s1 // high limit of shaft in mm
Sl = b-s2 // low limit of shaft in mm
Hh = b+h1 // high limit of hole in mm
Hl = b+h2 // low limit of hole in mm
c1 = Hh-Sl // maximum clearance in mm
c2 = Hl-Sh // minimum clearance in mm
printf("\n Basic size = %d mm\n Shaft tolerence = %0.3f mm\n Hole tolerence = %0.3f mm",b,t1,t2)
printf("\n High limit of shaft = %0.3f mm\n Low limit of shaft = %0.3f mm\n High limit of hole = %0.3f mm \n Low limit of hole = %0.3f mm",Sh,Sl,Hh,Hl)
printf("\n Maximum clearance = %0.3f mm\n Minimum clearance = %0.3f mm",c1,c2)

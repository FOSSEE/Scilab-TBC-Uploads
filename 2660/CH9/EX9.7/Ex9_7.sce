clc
bs = 100 // basic size in mm
s1 = 120// diameter of step1 in mm
s2 = 80 // diameter of step2 in mm
d = (s1*s2)^(1/2) // mm
d = ceil(d)
i = (0.45*(d)^(1/3)+0.001*d)/10^3 // mm
t1 = 16*i // tolerence for hole in mm
t2 = 25*i // tolerence for shaft in mm
G = (2.5*(d)^0.34)/10^3 // fundamental deviation for hole in mm
e = (11*(d)^0.11)/10^3 // fundamental deviation for shaft in microns
// Hole
LLh = bs+G // lower limit of hole in mm
HLh = LLh+t1 // higher limit of hole in mm
// shaft
ULs = bs-e // upper limit of shaft in mm
LLs = ULs-t2 // lower limit of shaft in mm
printf("\n lower limit of hole = %0.3f mm\n higher limit of hole = %0.3f mm\n upper limit of shaft = %0.3f mm\n lower limit of shaft = %0.3f mm" , LLh,HLh,ULs,LLs)
// Error in textbook

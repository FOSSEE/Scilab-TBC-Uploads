clc
aa = 0.04 // average allowance in mm
a = 0.012 // allowance in mm
Max = aa+a // maximum allowance in mm
Min = aa-a // minimum allowance in mm
t = (Max-Min)/3 // tolerence in mm
ts = t // tolerence in shat in mm
th = 2*t // tolerence in hole in mm
b = 100 // basic size in mm
Hl = b // lower limit of hole in mm
Hu = b+th // upper limit of hole in mm
Su = b-0.028 // upper limit of shaft in mm
Sl = Su-ts // lower limit of shaft in mm
printf("\n lower limit of hole = %d mm\n upper limit of hole = %0.3f mm\n upper limit of shaft = %0.3f mm\n lower limit of shaft = %0.3f mm" ,Hl,Hu,Su,Sl)


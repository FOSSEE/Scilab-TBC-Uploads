clc
// Hole-basis system
b = 100 // basic size in mm
i1 = 0.12 // maximum interference in mm
i2 = 0.05 // minimum interfernce in mm
t = (i1-i2)/2 // tolerence in mm
Sh = b+i1 // upper limit of shaft in mm
Hl = b // lower limit of hole in mm
Hh = b+t // higher limit of hole in mm
Sl1 = Sh-t //lower limit of shaft in mm  
// shaft-basis system
Su = b // upper limit of shaft in mm
Sl2 = b-t // lower limit of shaft in mm
Hl1 = b-i1 // lower limit of hole in mm
Hu = Hl1+t // higher limit of hole in mm
printf("\n Hole basis system \n upper limit of shaft = %0.3f mm\n lower limit of hole = %0.3f mm\n higher limit of hole = %0.3f mm\n lower limit of shaft = %0.3f mm" , Sh,Hl,Hh,Sl1)
printf("\n Shaft basis system \n upper limit of shaft = %0.3f mm\n lower limit of shaft = %0.3f mm\n lower limit of hole = %0.3f mm\n upper limit of hole = %0.3f mm" , Su,Sl2,Hl1,Hu)

clc
minc = 0.01 // minimum clearance in mm
bs = 25 // basic size in mm
maxc = 0.02 // maximum clearance in mm
x=poly(0,'x')
y=1.5*x
x=roots(y+0.01+x-0.02)
y=horner(y,x)
// hole basis system
low_h1 = bs // low limit of hole in mm
high_h1 = bs+y // high limit of hole in mm
u_s = low_h1-minc // upper limit of shaft in mm
low_s1 = u_s-x // lower limit of shaft in mm
// shaft basis system
high_s = bs // high limit of shaft in mm
low_s2 = bs-x // low limit of shaft in mm
low_h2 = bs+minc // low limit of hole in mm
high_h2 = low_h2+y // high limit of hole in mm
printf("Hole basis system \n Lower limit of hole = %d mm\n Higher limit of hole = %0.3f mm\n Higher limit of shaft = %0.3f mm \n Lower limit of shaft = %0.3f mm", low_h1,high_h1,u_s,low_s1)
printf("\n Shaft basis system \n high limit of shaft = %0.3f mm\n lower limit of shaft = %0.3f mm\n lower limit of hole = %0.3f mm\n upper limit of hole = %0.3f mm" , high_s,low_s2,low_h2,high_h2)

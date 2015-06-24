
epsilon=8.854D-12
AB=.05
BC=.07
AC=sqrt(.05^2+.07^2)
V1=2D-10/(4*%pi*epsilon*.05)//potential at A due to charge at B
V2=-8D-10/(4*%pi*epsilon*AC)//potential at A due to charge at C
V3=4D-10/(4*%pi*epsilon*.07)//potential at A due to charge at D
V=V1+V2+V3 
mprintf("Potential at A due to charges at B, C and D=%f V", V)

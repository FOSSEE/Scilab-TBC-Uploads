clc
//initialisation of variables
R= 48.3 //ft lb/lb R
T= 100 //F
T1= 500 //F
T2= 1500 //F
k= 1.4
k1= 1.36
k2= 1.31
//CALCULATIONS
dc= R/778
cp= (k/(k-1))*dc
cv= cp/k
cp1= (k1/(k1-1))*dc
cv1= cp/k1
cp2= (k2/(k2-1))*dc
cv2= cp2/k2
//RESULTS
printf ('cp= %.3f Btu/lb R',cp)
printf (' \n cv= %.3f Btu/lb R',cv)
printf (' \n cp1= %.3f Btu/lb R',cp1)
printf (' \n cv1= %.3f Btu/lb R',cv1)
printf (' \n cp2= %.3f Btu/lb R',cp2)
printf (' \n cv2= %.3f Btu/lb R',cv2)

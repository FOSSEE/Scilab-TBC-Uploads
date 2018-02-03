clear
//In this problem, it is required to find out the moment of inertia of the section about an axis AB. So there is no need to find out the position of the centroid. 
//The given section is split up into simple rectangles
//Moment of inertia about AB = Sum of moments of inertia of the rectangle about AB

//variable declaration

A1=400*20.0
A2=100*10
A3=10*380.0
A4=100*10.0

IAB=(400.0*(20**3)/12)+(A1*(10**2))+((100*(10**3)/12)+(A2*(25**2)))*2+((10*(380**3)/12)+(A3*(220**2)))*2+((100*(10**3)/12)+(A4*(415**2)))*2

printf("\n IAB= %0.0f  mm^4",IAB)

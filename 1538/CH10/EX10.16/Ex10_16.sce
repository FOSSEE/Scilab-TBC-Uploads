//example-10.16
//page no-332
//given
//ASTM number
n=4
//as we know that
N=2^(n-1)  //per inch^2 at a magnification of 100
//let r be the radius of grain
//so
//N*A=1/100 inch^2  where A=(%pi)*r^2
//so
r=sqrt(1/100/N/(%pi))   //inch
//radius of grain in mm
R=r*25.4  //mm
printf ("the radius of grain is %f mm", R)

clc;


// Given forces with direction shown by sign -ve to downwards, +ve for upwards. j shows that firceis along y direction
f1=150;//N, j 
f2=-600;//N, j
f3=100;//N , j
f4=-250;//N,j
//a) force couple system at A
R=f1+f2+f3+f4;//N, j Resultant force, sum of all forces
//M_RA=sum(r*f)
M_RA=1.6*f2+2.8*f3+4.8*f4;//m, k sum of moments by each force
printf("Equivalent force couple system at A is thus R= %.2f N and M_RA= %.2f N.m \n",R,M_RA);
//B) Force couple system at B
BA=-4.8;//m, i
M_RB=M_RA+BA*R;//N.m
printf("Equivalent force couple system at B is thus R= %.2f N and M_RB= %.2f N.m \n",R,M_RB);

//c)single force or resultant
// r*R=M_RA

//x.i * (-600N)j=-(1800N.m)k
x=M_RA/R;//m, distance of point of application from A
printf("Equivalent single force is defined as at  R= %.2f N and acts at x= %.2f m \n",R,x);

clear
//
//
//

//Variable declaration    
NA=0.22;    //numerical aperture
delta=0.012;    //relative difference

//Calculations
N=1-delta;
n1=sqrt(NA^2/(1-N^2));      //core refractive index
n2=N*n1;     //cladding refractive index

//Result
printf("\n core refractive index is %0.2f ",n1)
printf("\n cladding refractive index is %0.3f ",n2)

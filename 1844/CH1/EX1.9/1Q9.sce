clc
//Intialsing variables
SF= 9.7/10 // Shrinkage factor=Present length /original length
TRF=1/(10*100) // True scale RF
//calculation of variables
RFS= SF*TRF // RF of shrunk scale
//Results
printf ( 'R.F of shrunk scale =%2f\n',RFS)

PA=100.2 // Present area in sq cm
OA= (10/9.7)^2 * PA //Original area on plan in sq cm
S=10 // scale of plane is 1cm= 10m
//calculation of variables
A= OA*S^2 // Area of survey
//Results
printf (' Area of the survey = %f sq m',A)

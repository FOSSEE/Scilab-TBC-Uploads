clc//
//
//

//Variable declaration
V=475;     //volume(m^3)
aw=200;    //area of wall(m^2)
ac=100;    //area of ceiling(m^2)
ac_w=0.025;    //absorption coefficient of wall
ac_c=0.02;    //absorption coefficient of ceiling
ac_f=0.55;    //absorption coefficient of floor

//Calculation
sigma_as=(aw*ac_w)+(ac*ac_c)+(ac*ac_f);     
T=0.165*V/sigma_as;          //reverberation time of hall(s)

//Result
printf("\n reverberation time of hall is %0.3f s",T)

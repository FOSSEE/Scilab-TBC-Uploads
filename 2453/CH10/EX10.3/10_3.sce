//To calculate the spot size
n = 1;     //for air
lamda = 650;     //wavelength, nm
lamda = lamda*10^-9;    //wavelength, m
bs = 1;     //beam size, mm
bs = bs*10^-3;    //beam size, m
fl = 1;    //focal length of lens, mm
fl = fl*10^-3;     //focal length of lens, m
tan_theta = fl/(2*bs);     //value of tan_theta
theta = atand(tan_theta);
NA = n*sind(theta);
ss = 0.6*lamda/NA;       //spot size, m
ss = ss*10^6;       //spot size, micro metre
printf("spot size is %5.3f micro metre",ss);

//answer given in the book is wrong

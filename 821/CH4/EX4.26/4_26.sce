printf('From the linear plot of the langmuir isotherm the intercept=0.35*10^-3 and slope=9.47*10^-2');
printf('\nVolume is the inverse of summation of intercept and slope and that is 10.52cc');
Vm=10.52;//volume in cc//
m=Vm/22400;//No. of moles of N2//
N=m*6.023*10^23;//No. of molecules of N2//
TA=N*16*10^-16;//Total area in cm^2//
A=TA/17.5;//Area per gram in cm^2//
printf('\nArea of N2 per gram=%fcm^2',A);

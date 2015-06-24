printf('From the linear plot of the langmuir isotherm the intercept Xm=1/0.19=5.26milligrams');
Xm=5.26*10^-3;
printf('\nThis is the weight of N2 that forms a unimolecular layer of 2g charcoal.');
MW=28;//molecular weight of N2//
N=Xm*6.023*10^23/MW;//No. of molecules of N2//
TA=N*16*10^-16;//Total area in cm^2//
A=TA/2;//Area per gram in cm^2//
printf('\nArea of N2 per gram=%fcm^2',A);

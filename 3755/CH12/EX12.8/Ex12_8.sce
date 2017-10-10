clear
//
//
//

//Variable declaration
lamda=7000*10^-10;    //wavelength(m)
d=5*10^-3;        //aperture(m)
f=0.2;       //focal length(m)
P=50*10^-3;      //power(W)

//Calculation
d_theta=1.22*lamda/d;       //angular speed(radian)
A=(d_theta*f)^2;           //areal speed(m^2)
I=P/A;                //intensity of image(watt/m^2)

//Result
printf("\n areal speed is %0.3f *10^-8 m^2",A*10^8)
printf("\n intensity of image is %0.2f *10^5 watt/m^2",I/10^5)
printf("\n answer given in the book is wrong")

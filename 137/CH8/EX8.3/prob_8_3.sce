clc;
// page no. 367
//prob no. 8.3
//since both the plots can be out of synchronization by as much as 6 parts (bits)in 10^13 , we have 
// timing error bits per second can be calculated as-
//error in synchronization is given as
e=6/(10^13);//timing eeor bits per transmitted bits
//bit rate is given as
r =1544000 ;// in bits/sec
//timing error bits per second ,Te is given as
Te=e*r;
S=1/Te;// seconds per timing error bits
H=S/3600;// hours per timing error bits
//since a synchronization error can occur whenever the network is out of synchronization by 1/5 bits, the time between resynchronizing is given as
T=H/5;
disp(+'Hr',T,"No. of hours for resynchronizing");
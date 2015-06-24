clc;
//page 212
//problem 5.1
// The values of constsnts Kf and Kp are given as Kf= 2*pi*10^5 and Kp=10*pi, and carrier frequency fc=100MHz

// For FM :
//fi= fc + Kf*m(t)/2*pi
// Minimum value of m(t) = -1 and Maximum value of m(t)= +1
Kf= 2*%pi*10^5 ; Kp=10*%pi;
fc=100*10^6 ;// in Hz
Mmin = -1 ; Mmax=1;
fimin1= fc + Kf*Mmin/(2*%pi);
disp(+'MHz',fimin1/10^6,'Minimum frequency in MHz is ');
fimax1= fc + Kf*Mmax/(2*%pi);
disp(+'MHz',fimax1/10^6,'Maximum frequency in MHz is ');

//For PM :
//fi= fc + Kp*m(t)'/2*pi
// Minimum value of m(t)' = -20,000 and Maximum value of m(t)'= +20,000
Mmin1=-20000 ; Mmax1=20000;
fimin2= fc + Kp*Mmin1/(2*%pi);
disp(+'MHz',fimin2/10^6,'Minimum frequency in MHz is ');
fimax2= fc + Kp*Mmax1/(2*%pi);
disp(+'MHz',fimax2/10^6,'Maximum frequency in MHz is ');

// Since m(t) is increases and decreases linearly with time, the instantaneous frequency increases linearly from fimin to fimax
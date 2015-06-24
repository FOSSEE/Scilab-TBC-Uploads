clc;
//page 213
//problem 5.2
// The values of constsnts Kf and Kp are given as Kf= 2*pi*10^5 and Kp=pi/2, and carrier frequency fc=100MHz
// For FM :
//fi= fc + Kf*m(t)/2*pi
// Minimum value of m(t) = -1 and Maximum value of m(t)= +1
Kf= 2*%pi*10^5 ; Kp=%pi/2;
fc=100*10^6 ;// in Hz
Mmin = -1 ; Mmax=1;
fimin1= fc + Kf*Mmin/(2*%pi);
disp(+'MHz',fimin1/10^6,'Minimum frequency in MHz is ');
fimax1= fc + Kf*Mmax/(2*%pi);
disp(+'MHz',fimax1/10^6,'Maximum frequency in MHz is ');
// Since m(t) is increases and decreases linearly with time, the instantaneous frequency increases linearly from fimin to fimax

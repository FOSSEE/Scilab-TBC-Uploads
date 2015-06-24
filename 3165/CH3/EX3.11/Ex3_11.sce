//Example 3 . 11 
//Program to d e s i g n L .P. F . f i l t e r wi th f o l l owi n g s p e c i f i c a t i o n s :
//N=15 , wc=p i /4
clc ;
N =15;
U =1;
for n =0+ U :1:N -1+U
    h(n) =(1+ cos (2* %pi *(7 -n)/N)+cos (4* %pi *(7 -n)/N))/N;
end
[ hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure ;
plot (2* fr , hzm_dB );
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f FIR LPF wi th N=11 ' );
xgrid (2)

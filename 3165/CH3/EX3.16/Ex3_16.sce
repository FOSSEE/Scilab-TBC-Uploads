//Example 3 . 16
//Program to Pl o t Magni tude Responce o f i d e a l B.P. F .
// u s i n g Hanning Window
//wc1=0.25 p iand wc2=0.5pi
//N=11
clc ;
N =11;
U =6;
h_hann = window ( 'hn' ,N);
for n= -5+U :1:5+ U
if n ==6
hd(n) =0.75;
else
hd(n)=( sin ( %pi *3*(n-U)/4)-sin( %pi *(n-U)/4))/( %pi *(n-U));
end
 h(n)= h_hann (n)*hd(n);
end
[ hzm ,fr ]= frmag (h ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2* fr , hzm_dB )
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f FIR BPF wi th N=11 u s i n g Hanning Window ' );
xgrid (2);

//Example 3.1
//Program to Pl o t Magni tude Responce o f i d e a l L .P. F .wi th wc=0.5 p i
//N=11
clc ;
N =11;
U =6;
for n= -5+U :1:5+ U
if n ==6
hd(n) =0.5;
else
hd(n)=( sin (%pi *(n-U) /2) )/( %pi *(n-U));
end
end
[ hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure ;
plot (2* fr , hzm_dB );
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f FIR LPF wi th N=11 ' );
xgrid (2);

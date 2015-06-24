//Example 
//Program to Pl o t Magni tude Responce o f i d e a l Hi l b e r t Tr ans f o rme r
// u s i n g Blackman Window
//N=11
clc ;
N =11;
U =6;
for n= -5+U :1:5+ U
h_balckmann (n) = 0.42+0.5* cos (2* %pi *(n-U)/(N -1) )+0.08* cos (4* %pi *(n-U)/(N -1) );
if n ==6
hd(n) =0;
else
hd(n)=(1 - cos (%pi *(n-U)))/( %pi *(n-U));
end
h(n)=hd(n)* h_balckmann (n);
end
[ hzm ,fr ]= frmag (h ,256) ;
figure
plot (2* fr ,-hzm );
a = gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'H( exp ( j w) ) ' );
title ( ' Fr equency Re spons e o f Hi l b e r t Tr ans f o rme r wi th N=11 u s i n g Blackman Window ' );
xgrid (2);

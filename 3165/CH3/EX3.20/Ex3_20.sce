//Example 3-20
//Program to Pl o t Magni tude Responce o f g i v e n B.P. F .wi th s p e c i f i c a t i o n s :
//wp1=40 p i rad / s e c , wp2=60 p i rad / s e c
//ws1=20 p i rad / s e c , ws2=80 p i rad / s e c
// as=30dB, ap=0.5dB
//F=100 Hz
// Us ing Ka i s e r Window
clc ;
wsf =200* %pi; // rad / s e c
ws1 =20* %pi; // rad / s e c
ws2 =80* %pi; // rad / s e c
wp1 =40* %pi; // rad / s e c
wp2 =60* %pi; // rad / s e c
as =30 //dB
ap =0.5 //dB
B= min(wp1 -ws1 ,ws2 - wp2 );
wc1 =wp1 -B/2;
wc2 = wp2 +B/2;
wc1 = wc1 *2* %pi / wsf ;
wc2 = wc2 *2* %pi / wsf ;
delta1 =10^( -0.05* as);
delta2 =(10^(0.05* as) -1) /(10^(0.05* as)+1);
delta = min (delta1 , delta2 );
alphas = -20* log10 ( delta );
alpha =0.5842*( alphas -21) ^0.4+0.07886*( alphas -21)
D=( alphas -7.95) /14.36;
N1=wsf*D/B +1;
N= ceil (N1);
U= ceil (N /2) ;
win_l = window ( 'kr' ,N, alpha );
for n=- floor (N/2)+U :1: floor (N /2) +U
if n== ceil (N /2) ;
hd(n) =0.4;
else
hd(n)=( sin (0.7* %pi *(n-U))-sin (0.3* %pi *(n-U)))/( %pi *(n-U));
end
h(n)=hd(n)* win_l (n);
end
 [ hzm ,fr ]= frmag (h ,256) ;
 hzm_dB = 20* log10 (hzm)./ max ( hzm );
figure
plot (2* fr , hzm_dB )
a= gca ();
xlabel ( ' Fr equency w p i ' );
ylabel ( 'Magni tude i n dB ' );
title ( ' Fr equency Re spons e o f g i v e n BPF u s i n g Ka i s e r Window ' );
xgrid (2);
disp (h," F i l t e r Co e f f i c i e n t s , h ( n )=");

//Ex 9.3
//FIR Filter
close;
clc;
//Fourier series method
//for N=5
N=5;
U=3;
for n=-2+U:1:2+U
if n==3  
hd(n)=0.25;      
else
hd(n)=sin(%pi*(n-U)/4)/(%pi*(n-U));
end
end
[hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
plot (2*fr , hzm_dB )

//for N=15
N=15;
U=8;
for n=-7+U:1:7+U
    if n==8  
        hd(n)=0.25;      
    else
        hd(n)=sin(%pi*(n-U)/4)/(%pi*(n-U));
    end
end
[hzm ,fr ]= frmag (hd ,256) ;
hzm_dB = 20* log10 (hzm)./ max ( hzm );
plot (2*fr , hzm_dB )
xlabel('Normalised Frequency w/pi')
ylabel('Magnitude')
title('Plot of Amplitude response of FIR Filter')
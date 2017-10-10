
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 11.4
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given

BR=[0.5e6 10e6 100e6 1000e6]//data rate in bps

for i=1:4
Lmax1(i)=6.757e10/BR(i)//Material dispersion limited distance in m
Lmax2(i)=4.2e10./BR(i)//modal limited distance in m
Lmax3(i)=(55-20*log10(BR(i)))//attenuation limited distance in m
end
BR=[0 1 2 3]
plot((BR)/1e6,Lmax1/1e4,'--')
plot((BR)/1e6,Lmax2/1e4)
//plot(log10(BR),(10^(Lmax3)/1e6)'-.-.')
xtitle( 'Link Length Versus Data Rate', 'Data Rate (Mb/s)', 'Link Length(Km)',  boxed = %t );
hl=legend(['Lmax1';'Lmax2']);

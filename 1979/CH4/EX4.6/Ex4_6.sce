//chapter-4 page 144 example 4.6
//==============================================================================
clc;
clear;

//To calculate the ratio of circular waveguide cross-sectional area to the rectangular waveguide cross section
disp('Assuming that both these waveguides have similar or equal cutoff frequencies/wavelengths');

disp('Case1: When TE wave is propagated');
disp('For standard rectangular waveguides a=2b and For TE11 dominant mode in circular waveguide wc1=(2(pi)r)/1.841');
disp('where r is the radius of the circular waveguide and wc1 is the cutoff wavelength for circular waveguide');
disp('It is given wc1=wc2 where wc2 is the cutoff wavelength for rectangular waveguide');
disp('For TE10(dominant mode) of propagation in rectangular waveguide wc2=2a');
disp('Since wc2=(2ab)/(sqrt((mb)^2+(nb)^2)) as m=1;n=0 for TE10 wc2=2ab/b=2a');
disp('By equating wc1=wc2, we get a=1.70645r');
disp('For a standard waveguide a=2b therefore, b=a/2');
disp('Now the area of rectangular waveguide=a*b=a*a/2=1.70645r*1.70645r/2=1.456r^2');
disp('Area of rectangular waveguide=1.456r^2 ,Area of circular waveguide=(pi)*r^2');
disp('Ratio of area of circular to area of rectangular waveguide=(Area of circular waveguide/Area of rectangular waveguide)=(pi*r^2)/(1.456r^2)=2.1576873=2.2');
disp('This clearly shows that the space occupied by a rectangular waveguide system is less compared to that for a circular waveguide system.Hence circular waveguides are not preferred in some applications');

disp('Case2: When TM wave is propagated');
disp('For TM01 mode wc1=(2*pi*r)/(Pnm)min=(2*pi*r)/Pnm=(2*pi*r)/2.405 where r is the radius of circular waveguide wc1=2.6155r');
disp('Now if wc2 is the wavelength for TM11 wave propagating in a standard rectangular waveguide wc2=wc1 but wc2=(2ab)/sqrt(a^2+b^2)');
disp('For standard waveguides,we know a=2b, wc2=(2*2b*b)/sqrt(4b^2+b^2)=(4b^2)/sqrt(5b^2)=4b/sqrt(5)');
disp('By equating wc1=wc2, we get 2.6155r=4b/sqrt(5)=>b=1.4621r');
disp('Area of rectangular waveguide=b*b=b^2 but b=1.4621r, so Area of rectangular waveguide=(1.4621r)^2=2.132r^2 and Area of circular waveguide= pi*r^2');
disp('Ratio of area of circular to area of rectangular waveguide=(Area of circular waveguide/Area of rectangular waveguide)=(pi*r^2)/(2.132r^2)=1.5');

//=========================END OF PROGRAM===============================

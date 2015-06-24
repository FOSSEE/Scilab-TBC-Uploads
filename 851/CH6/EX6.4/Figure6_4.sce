//clear//
//Caption:Power Spectra of different binary data formats
//Figure 6.4: Power Spectal Densities of 
//Different Line Coding Techniques
//[1].NRZ Polar Format [2].NRZ Bipolar format
//[3].NRZ Unipolar format [4]. Manchester format
//Page 241
close;
clc;
//[1]. NRZ Polar format
a = input('Enter the Amplitude value:');
fb = input('Enter the bit rate:');
Tb = 1/fb;  //bit duration
f = 0:1/(100*Tb):2/Tb;
for i = 1:length(f)
  Sxxf_NRZ_P(i) = (a^2)*Tb*(sinc_new(f(i)*Tb)^2);
  Sxxf_NRZ_BP(i) = (a^2)*Tb*((sinc_new(f(i)*Tb))^2)*((sin(%pi*f(i)*Tb))^2);
  if (i==1)
    Sxxf_NRZ_UP(i) = (a^2)*(Tb/4)*((sinc_new(f(i)*Tb))^2)+(a^2)/4;
  else
    Sxxf_NRZ_UP(i) = (a^2)*(Tb/4)*((sinc_new(f(i)*Tb))^2);
  end
  Sxxf_Manch(i) = (a^2)*Tb*(sinc_new(f(i)*Tb/2)^2)*(sin(%pi*f(i)*Tb/2)^2);
end
//Plotting
a = gca();
plot2d(f,Sxxf_NRZ_P)
poly1= a.children(1).children(1);  
poly1.thickness = 2;  // the tickness of a curve.
plot2d(f,Sxxf_NRZ_BP,2)
poly1= a.children(1).children(1);  
poly1.thickness = 2;  // the tickness of a curve.
plot2d(f,Sxxf_NRZ_UP,5)
poly1= a.children(1).children(1);  
poly1.thickness = 2;  // the tickness of a curve.
plot2d(f,Sxxf_Manch,9)
poly1= a.children(1).children(1);  
poly1.thickness = 2;  // the tickness of a curve.
xlabel('f*Tb------->')
ylabel('Sxx(f)------->')
title('Power Spectral Densities of Different Line Codinig Techniques')
xgrid(1)
legend(['NRZ Polar Format','NRZ Bipolar format','NRZ Unipolar format','Manchester format']);
//Result
//Enter the Amplitude value:1
//Enter the bit rate:1 

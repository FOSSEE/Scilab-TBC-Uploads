function [I0, I1, I2, a0, a1, a2, In, an] = line_to_seq(ir, iy, ib, air, aiy, aib)
  
  a=1*(cosd(120)+%i*sind(120));
  
  Ir=ir*(cosd(air)+%i*sind(air));
  Iy=iy*(cosd(aiy)+%i*sind(aiy));
  Ib=ib*(cosd(aib)+%i*sind(aib));
  
  i0=1/3*(Ir+Iy+Ib);
  i1=1/3*(Ir+a*Iy+a^2*Ib);
  i2=1/3*(Ir+a^2*Iy+a*Ib);
  
  in=3*i0;
  In=abs(in);
  an=atand(imag(i0)/real(i0));
  
  I0=abs(i0);
  I1=abs(i1);
  I2=abs(i2);
  
  a0=atand(imag(i0)/real(i0));
  a1=atand(imag(i1)/real(i1));
  a2=atand(imag(i2)/real(i2));
  
endfunction

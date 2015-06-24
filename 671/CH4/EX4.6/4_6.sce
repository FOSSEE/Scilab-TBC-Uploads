Z1=complex(10,15)
Z2=complex(6,-8)

I=complex(15,0)
I1=I*Z2/(Z1+Z2)
I2=I*Z1/(Z1+Z2)
phase=[atan(imag(I1)/real(I1));atan(imag(I2)/real(I2))]
disp(phase*180/%pi)

V=I1*Z1
disp(180/%pi*atan(imag(V)/real(V)))
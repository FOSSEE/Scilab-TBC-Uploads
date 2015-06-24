//to calculate magnitude and phase of secondary current

clc;
X1=505;    //uohm
X2=551;    //uohm
R1=109;    //uohm
R2=102;    //uohm
Xm=256;    //mohm
I1=250;    //A
I22=complex(0,Xm*1000)*I1/(complex(R1,X2+Xm*1000));
N1=250;
N2=5;
I2=I22*(N2/N1);
disp(abs(I2),'current magnitude(A)');
disp(atand(imag(I2)/real(I2)),'phase(degree)');
disp('now Rb is introduced in series');
Rbb=200;    //uohm
Rb=(N2/N1)^2*Rbb;
I22=complex(0,Xm*1000)*I1/(complex((R1+Rb),X2+Xm*1000));
I2=I22*(N2/N1);
disp(abs(I2),'current magnitude(A)');
disp(atand(imag(I2)/real(I2)),'phase(degree)');
disp('no chnage as Rb is negligible');
clc
//ex11.8
V_i=complex(0.1*cos(-%pi/6),0.1*sin(-%pi/6));
V_o=complex(10*cos(%pi/12),10*sin(%pi/12));
A_v=V_o/V_i;
A_v_max=sqrt((real(A_v)^2)+(imag(A_v)^2))
phi=atan(imag(A_v)/real(A_v));
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp('The complex voltage gain is with')
disp(A_v_max,'a peak value of')
disp(phi,'a phase angle in degrees')
disp(20*log(A_v_max)/2.30258,'and the decibel gain is')      //2.30258 is for base 10

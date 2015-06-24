//clear//
//Example 1.6:Determine the fundamental period of composite
// discrete time signal
//x[n] = exp(j(2*%pi/3)n)+exp(j(3*%pi/4)n)
clear;
clc;
close;
Omega1 = 2*%pi/3;   //Angular frequency signal 1
Omega2 = 3*%pi/4;  //Angular frequency signal 2
N1 = (2*%pi)/Omega1;  //Peirod of signal 1
N2 = (2*%pi)/Omega2;  //Period of signal 2
//To find rational period of signal 1
for m1 = 1:100
  period = N1*m1;
  if(modulo(period,1)==0)
    period1 = period;
    integer_value = m1
    break;
  end
end
//To find rational period of signal 2
for m2 = 1:100
  period = N2*m2;
  if(modulo(period,1)==0)
    period2 = period;
    integer_value = m2
    break;
  end
end
disp(period1)
disp(period2)
//To determine the fundamental period N
N = period1*period2

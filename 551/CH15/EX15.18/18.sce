clc
m_h=0.2; //kg/s
m_c=0.5; //kg/s
t_h1=75; //0C
t_h2=45; //0C
t_c1=20; //0C
hi=650; //W/m^2 0C
h0=hi;
cph=4.187;
cpc=cph;

Q=m_h*cph*(t_h1-t_h2);
t_c2=m_h*cph/cpc*(t_h1-t_h2)/m_c+t_c1;

theta=((t_h1-t_c1)- (t_h2-t_c2))/log((t_h1-t_c1)/(t_h2-t_c2)); //Logarithmic mean temperature difference

U=hi*h0/(hi+h0);
A=Q*10^3/U/theta;
disp("The area of heat exchanger =")
disp(A)
disp("m^2")
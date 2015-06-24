//Section-14,Example-1,Page no.-PC.48
//To calculate the surface tension of ethyl alcohol and the no. of times a water drop is heavier than a drop of ethyl alcohol.
clc;
y_r=7.2*10^-2
n_r=30
n_e=30
d_e=0.865*10^3
d_r=0.996*10^3
y_e=(((y_r)*(n_r)*(d_e))/((n_r)*(d_r)))
disp(y_e,'Surface tension of ethyl alcohol(N/m)')
//m=m_r/m_e=y_r/y_e
m=(y_r/y_e)
disp(m,'No.of times a water drop is heavier than a drop of the ethyl alcohol')
//y_e=3.75*10^-2,(m_r/m_e)=1.92, is wrong in the book.

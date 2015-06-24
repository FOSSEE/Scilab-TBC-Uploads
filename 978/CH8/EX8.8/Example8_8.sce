//chapter-8,Example8_8,pg 500

V=4//peak voltage

I=0.4//peak current

f=1*10^3//operating frequency

fs=40*10^3//sampling rate

delt=2.2//time interval

phi=((2*%pi*f)/fs)//phase 

Et=(V*I*phi)/(4*%pi*f*delt*sin(phi))//truncation error

printf("truncation error\n")

printf("Et=%.8f ",Et)
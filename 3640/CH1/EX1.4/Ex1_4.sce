clc
V1=240 //voltage applied to a winding of transformer(three phase) in volts
f1=60 //initial applied frequency in Hz
f2=30 //reduced frequency in Hz
Phe1=400 //core loss in watts at f1 frequency
Phe2=169 //core losses in watts at f2 frequency
mprintf("V2=%dV\n",(f2*V1)/f1)//voltage at 30 Hz frequency
mprintf("Ph+e/f=Ch+Ce*f\n")//equation for claculating  hysteresis and eddy current loss coefficients
a=[1 f1;1 f2] //left hand side matix for the equation above
b=[Phe1/f1;Phe2/f2] //right hand side matrix for the equation above
c=inv(a)*b
Ch=c(1,:)//hysteresis loss coefficient in W/Hz
Ce=c(2,:)//eddy current loss coefficient in W/(Hz*Hz)
mprintf("Ph=%fW\n",Ch*f1)//ans may vary due to roundoff error //hysteresis loss in watts at 60 Hz
mprintf("Pe=%fW\n",Ce*f1*f1)//ans may vary due to roundoff error //eddy current loss at 60 Hz in watts







clc
//extension of Ex3_1
//uses a userdefined function complexstring
function s=complexstring(a)
    
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
I2=10
V2=1000
r2=1
X11=20 //in ohm
x1=0.05 //in ohm
X22=2000 //in ohm
x2=5 //in ohm
Xm1=X11-x1
Xm2=X22-x2
X12=sqrt(Xm1*Xm2)
V12=V2+I2*(r2+(%i*(X22-X12)))//ans may vary due to roundof error
disp('V12='+complexstring(V12)+'V')
I1=I2+(V12/(%i*X12))//ans may vary due to roundof error
disp('I1='+complexstring(I1)+'A')
r1=0.01
V1=V12+(I1*(r1+(%i*(X11-X12))))//ans may vary due to roundof error
disp('V1='+complexstring(V1)+'V')
a=0.1
Zeq1=r1+(a*a*r2)+(%i*(x1+(a*a*x2)))//ans may vary due to roundof error
disp('Zeq1='+complexstring(Zeq1)+'Ω')
V1=(a*V2)+(I2^Zeq1/a)//ans may vary due to roundof error
disp('V1='+complexstring(V1)+'V')

clc
pathname=get_absolute_file_path('46.sce')
filename=pathname+filesep()+'46.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\46.txt')
disp("A venturimeter,consisting of a converging portion followed by a throat of constant diameter and then gradually diverging portion,is used to detremine the flow of the pipe.The diameter at section 1 is 6 in. and that of section 2 is 4 in.,Find the discharge through the pipe when p1-p2=3psi and oil of sp grvty 0.9 is flowing")
disp("Solution:")
disp("From the continuity equation Q=A1v1=A2v2")
disp("Therefore,v1=Q*16/pi , v2=Q*36/pi")
disp("And moreover Z1=Z2")
disp("Therefore discharge Q =")
a1=%pi/16//sq.ft
a2=%pi/36//sq.ft
q=sqrt(a*144*(%pi^2)*2*32.185/((s*62.4)*(36^2-16^2)))
disp("cfs",q)
diary(0)
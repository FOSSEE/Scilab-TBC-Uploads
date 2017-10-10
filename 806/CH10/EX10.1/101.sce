clc
pathname=get_absolute_file_path('101.sce')
filename=pathname+filesep()+'101.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\101.txt')
disp("A 75 mm diameter orific under a head of 4.88 m discharges 8900 N waterin 32.6 s.The trajectory was determined by measuring x=4.76 m for a drop of 1.22.determine the head loss per unit weight,the power loss,Cc,Cv,Cd")
disp("Solution:")
Vt=sqrt(2*g*H)//theoretical velocity
t=sqrt(2*y/g)//actual time
Va=x/t//actual velocity
Cv=Va/Vt//coefficient of velocity
Qa=F/p/T//actual discharge
Cd=Qa/(%pi*d^2*Vt)*4//coefficient of discharge
Cc=Cd/Cv//coefficient of contraction
HL=H*(1-Cv^2)//Head loss
PL=Qa*p*HL//power loss
disp(Cd,"Cd=")
disp(Cv,"Cv=")
disp(Cc,"Cc=")
disp("m.N/N",HL,"Head loss=")
disp("W",PL,"Power loss=")
diary(0)
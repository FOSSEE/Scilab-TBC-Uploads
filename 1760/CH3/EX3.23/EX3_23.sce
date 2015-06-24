                        //EXAMPLE 3-23     PG NO-188
Za=8.66+%i*5;
Zc=8.48+%i*8.48;
Zb=11.50+%i*9.642;
VRn=254+%i*0;
VYn=-127.02-%i*220;
Vbn=-127.02+%i*220;
Yr=1/Za;
disp('i) admittance  (Ya) is  in rectangular form  =  '+string (Yr) +' siemens ');
Yb=1/Zb;
disp('i) admittance  (Yb) is  in rectangular form  =  '+string (Yb) +' siemens ');
Yy=1/Zc;
disp('i) admittance  (Yc) is  in rectangular form  =  '+string (Yy) +' siemens ');

Von=[(VRn*Yr)+(Vbn*Yb)+(VYn*Yy)]/(Yr+Yb+Yy);

disp('i) Voltage  (Von) is  in rectangular form  =  '+string (Von) +' V');

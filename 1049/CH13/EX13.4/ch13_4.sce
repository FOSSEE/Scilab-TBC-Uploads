clc
clear
V_s=230;
I_L=10;
X_L=V_s/I_L;
I_f1=6;
//B=2*a-sin(2*a)
B=2*%pi-I_f1*%pi*X_L/V_s;
a=0;
i=1;
for a= 0:.01:360
    b=2*a*%pi/180-sind(2*a);    
    if abs(B-b)<=.001;        //by hit and trial
        i=2;
        break;
    end   
end
printf("firing angle of TCR = %.1f deg",a);
//(a-.01)*180/%pi);
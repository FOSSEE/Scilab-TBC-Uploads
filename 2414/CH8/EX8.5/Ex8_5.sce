clc;
close();
clear();
//page no 281
//prob no. 8.5
//All frequencies in kHz
f=1;
T=0.1;   //ms
fs=1/T;
mprintf('The positive frequencies below 45 kHz are \n %i\n ',f);
for i=1:1:100
    x=fs*i;   //x is a variable
    if((x+f) < 45)
        mprintf('%i  ,%i\n',x-f,x+f);
    else
        break();
        end
end

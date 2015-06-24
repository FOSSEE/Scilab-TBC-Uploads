//example 7.1//
clc
//clears the screen//
clear
//clears the command window//
e=input('Enter the enable i/p level (1or0) :');
//accepting the input of enable//
r=input('enter the R i/p level(1or0):');
//accepting the inputs from the user//
s=input('enter the S i/p level(1or0):');
//accepting the input S from the user//
qn=input('Enter the previous output value (1or0):');
//accepting the old input from the user//
flag=0;
if e==0 then
//calculating the output//
op=qn ;
elseif(s==0 & r ==0) then
op=qn ;
elseif ( s ==1& r ==1) then
disp('The inputs are illegal')
flag=1;
else
op=s;
end
if(flag==0)
disp('output(Qn+1)=')
disp(op)
end

//displaying the output//
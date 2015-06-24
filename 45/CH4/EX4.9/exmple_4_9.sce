//example 4.9 
clc;
clear;

sel = input(' Enter the values of ABCD :');
a=sel;
q=1;
while(a>0) // finding the decimal equivlent 
    r=modulo(a,10);
    b(1,q)=r;
    a=a/10;
    a=floor(a);
    q=q+1;
end
f=0;
for m=1:q-1
     c=m-1
    f = f + b(1,m)*(2^c);
end
if f >9 then //checking the invalid condition 
    disp('Its a invalid input. Therefore,none of the LEDs is on because all outputs lines are high' );
else  //displaying the LED no if the inputs are valid
    printf('\n LED %d lights up all. All other LEDs remain off because the other outputs are high.',f);
end


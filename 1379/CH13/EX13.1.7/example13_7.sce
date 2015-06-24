

//exapple 13.6 
clc; funcprot(0);
// Initialization of Variable
b=4.46*10^4;
c=1.98*10^4;
s=0;
function[a]=intregrate()
    s=0;
    for i=1:10889
        d=linspace(0,10000,10889);
        y=(1-exp(-b*d(i))*c*(1-exp(-c*d(i))))*0.69;;
        s=s+y;
        
    end
    a=y;
endfunction
a=intregrate();
disp(a*100,"overall efficiency of cyclone separator in %");

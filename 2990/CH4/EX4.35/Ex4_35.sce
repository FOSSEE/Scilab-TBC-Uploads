
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
//one of the 2 solution
f0=5+1.9/60;//declination in degrees
n=0.25;//constant
del0=0;//del''0
del1=-0.1;//del''1
d2=23.0//del1/2
//calculation
fn=f0+n*d2/60+n*(n-1)/2*(del1+del0)/60;
fn=degtodms(fn)
disp(fn,"sun declination in deg min sec");
clear()

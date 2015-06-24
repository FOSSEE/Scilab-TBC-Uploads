
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
function[z]=pol2rect(r,theta)
    x=r*cos(theta*%pi/180)
    y=r*sin(theta*%pi/180)
    z=x+y*%i
endfunction

j=%i
I=pol2rect(300,-acosd(.8))//total load to be shared by transformers A and B at .8 pf lagging
Za=.011+.042*j//impedance of transformer A
Zb=.044+.072*j//impedance of transformer B

//calculating load shared by transformer A
Ia=Zb*I/(Za+Zb)
[Ia theta]=rect2pol(Ia)
mprintf("Load shared by transformer A=%f A, lagging by an angle of %f degrees\n",Ia,-theta)

//calculating load shared by transformer B
Ib=Za*I/(Za+Zb)
[Ib theta]=rect2pol(Ib)
mprintf("Load shared by transformer B=%f A, lagging by an angle of %f degrees",Ib,-theta)
//answers vary from the textbook due to round off error


function[z]=pol2rect(r,theta)
    x=r*cos(theta*%pi/180)
    y=r*sin(theta*%pi/180)
    z=x+y*%i
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction

//calculating current in each line
Vl=400//line voltage
Vph=Vl/sqrt(3)//phase voltage
Ir=8D+3/Vph
Iy=6D+3/Vph
Ib=4D+3/Vph
mprintf("Current in R-phase,Ir=%f A\nCurrent in Y-phase,Iy=%f A\nCurrent in B-phase,Ib=%f A\n",Ir,Iy,Ib)
//Loads on three phases are resistive
Ir=pol2rect(Ir,0)
Iy=pol2rect(Iy,-120)
Ib=pol2rect(Ib,-240)
In=Ir+Iy+Ib
mprintf("Current in the neutral=%f A", mag(In))

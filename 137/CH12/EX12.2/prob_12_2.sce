//page 540
//problem 12.2
//as En=sqrt(nc^2+ns^2),where both nc and ns are gaussian with variance 6n^2,according to the following eqn P(En>=A)=integrate(En/6n^2)*e^(-En^2/2*6n^2)dEn;
// the value of this integral is the probability of which is 0.01
//hence e^(-A^2/2*6n^2)=0.01
//let g=A^2/(2*6n^2);
clc;
g=-(log(0.01)/log(%e));
// the variance 6n^2 of the bandpass noise of PSD N/2 and the bandwidth 2B is 2NB.Hence at the onset of the threshold
// therefore A^2/(2*6n^2)=A^2/(4NB)=g
//for tone modulation
//Si=A^2+m'^2/2;
//Si=3*A^2/4;
gma_th=3*(g);// gma_th=Si/NB=3*A^2/(4NB);
disp(gma_th,'gamma threshold');
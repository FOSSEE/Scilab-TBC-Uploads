function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

I1=12/1000
Ix=I1*30/(30+60)
disp(Ix)

I2=20/1000
V2=I2*(10+5)
R1=10+parallel(30,60)
I1=V2/R1
Ix=I1*30/(30+60)
disp(Ix)  //Wrongly printed in the book as 10

Ix=6/1000
I1=(30+60)/30*Ix
V2=I1*R1
I2=V2/15
disp(I2)

Is=45
I1=45*(10+5)/(10+5+R1)
Ix=I1*30/(30+60)
disp(Ix)  ///Answer is wrong in the book
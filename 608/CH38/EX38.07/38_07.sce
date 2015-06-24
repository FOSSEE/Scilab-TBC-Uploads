//Problem 38.07: The core of an inductor has a hysteresis loss of 40 W and an eddy current loss of 20 W when operating at 50 Hz frequency. (a) Determine the values of the losses if the frequency is increased to 60 Hz. (b) What will be the total core loss if the frequency is 50 Hz and the lamination are made one-half of their original thickness? Assume that the flux density remains unchanged in each case

//initializing the variables:
Ph1 = 40; // in W
Pe1 = 20; // in W
f1 = 50; // in Hz
x = 1/2;
f2 = 60; // in Hz
t1 = 1;
//calculation: 
//hysteresis loss Ph = kh*v*f*(Bm)^n = k1*f
//Thus when the hysteresis is 40 W and the frequency 50 Hz,
k1 = Ph1/f1
//If the frequency is increased to 60 Hz,
Ph2 = k1*f2
//eddy current loss, Pe = ke*(Bm1*f1*t1)^2 = k2*f^2
//since the flux density and lamination thickness are constant.
//When the eddy current loss is 20 W the frequency is 50 Hz. Thus
k2 = Pe1/(f1^2)
//If the frequency is increased to 60 Hz,
Pe2 = k2*(f2^2)
//hysteresis loss Ph = kh*v*f*(Bm)^n, is independent of the thickness of the laminations. Thus, if the thickness of the laminations is halved, the hysteresis loss remains at 
Phb2 = Ph1
//eddy current loss, Pe = ke*(Bm1*f1*t1)^2 = k2*t^3
k3 = Pe1/(t1^3)
t2 = 0.5*t1
Peb2 = k3*t2^3
//total core loss when the thickness of the laminations is halved is given by
TL = Phb2 + Peb2

printf("\n\n Result \n\n")
printf("\n(a)If the frequency is increased to 60 Hz,hysteresis loss is %.0f W and eddy current loss %.1f W",Ph2, Pe2)
printf("\n(b)the total core loss when the thickness of the laminations is halved %.1f W",TL)
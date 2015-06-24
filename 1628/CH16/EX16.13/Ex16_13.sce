
                // Examle 16.13

At=900;                  // Speed of motor
V=460;                   // Supply voltage
kQ=V/At;                 // Orignal Flux 
disp(' Orignal Flux = '+string(kQ));

V1=200;                  // Chenged Supply voltage
N=V1/(0.7*kQ);           // Speed of Motor When Supply (200 V)
disp(' Speed of Motor When Supply (200 V) = '+string(round(N))+' rpm');





              //  p 649     16.13
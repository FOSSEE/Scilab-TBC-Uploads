
                    // Example  14.2

alfa=20;                 // Slot angle
q1=120/20;               // No.Of slots for group p
sa=sind((q1*alfa)/2);
sb=sind(alfa/2);
kd1=sa/(q1*sb);         // Three phase Winding (with 120 phase group)
disp('(a) A Three phase Winding (with 120 phase group) = '+string(kd1));
q2=60/20;               // No.Of slots for group q
sa1=sind((q2*alfa)/2);
kd2=sa1/(q2*sb);        // TThree phase Winding (with 60 phase group)
disp('(b) A Three phase Winding (with 60 phase group) = '+string(kd2));




        //   p 554    Ex 14.2

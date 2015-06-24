//Example 1.10
clc
disp("The voltage gain of amplifier can be given as")
av=36/0.028
format(7)
disp(av,"A_v = Vo/V_in =")
disp("(i)  beta = 0.012")
disp("Therefore,  The gain of the amplifier with feedback is given as")
af=1285.7/(1+(1285.7*0.012))
format(6)
disp(af,"A_f = A_v / 1+A_v*beta =")
disp("The output voltage with feedback is given as")
vo=78.26*0.028
disp(vo,"Vo(in V) = A_f * V_in =")
vin=7*0.028
disp("(ii) If the output remains constant at 36V, then the distortion produced within the active devices of the amplifier is unchanged. However, since the distortion at the output is less than in part (i) by a factor of 7, it follows that the feedback now increased by 7 and hence, the voltage gain decreased by 7. Thus, the input signal required to produce the same output (as in part(i)) without feedback must be:")
disp(vin,"V_in(in V) =")

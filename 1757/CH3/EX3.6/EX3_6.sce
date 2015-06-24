//Example3.6  // determine the differential mode gain when load resistance RL = 100 k ohm
clc;
clear;
close;
RL = 100*10^3 ; // k ohm  // load resistance
IE = 0.20*10^-3 ; // mA  // biasing current
VA = 100 ; // V // early voltage
VT = 0.026 ;  // threshold volt

// the differential gain of differential amplifier with an active load circuit
//Ad = Vo/Vd  = gm(ro2 || ro4 || RL  )
ro2 = (2*VA)/IE;
ro4 = ro2 ;
gm = IE/(2*VT) ;

Ad = gm/((1/ro2)+(1/ro4)+(1/RL));
disp(' The differential mode gain Ad is = ' +string(Ad)+ '   ' );

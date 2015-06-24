//pagenumber 578 example 2
clear
sensit=5;// per centimetre
q=50*10^-6;//second per centimetre
petope=5.4;//centimetre
horiax=8.4;//centimetre
voltag=petope*sensit;
voltag=voltag/((2)*sqrt(2));
//one cycle
horiax=(horiax/2)*q;
freque=1/horiax;
disp("input voltage   =   "+string((voltag))+"volt");
disp("frequency   =   "+string((freque))+"hertz");


disp("vm1coswt vm2sinwt squaring and adding gives ellipse");





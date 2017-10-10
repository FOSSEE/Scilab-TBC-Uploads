clc; clear; close;

Vdd=1.2;//in volts
Vto=0.4;//in volts
gam=0.2;//in vplts^(0.5)
fi=0.88;//in volts
//solving of quadratic equation
a=1;
b=(-2)*(Vdd-Vto+gam*sqrt(fi))-(gam^2);
c=((((Vdd-Vto+gam*sqrt(fi))^2)-(gam^2)*fi));
Vout=((-b)-sqrt(b*b-4*c))/2;
disp(Vout,'Output(in volts) when input=1.2V and clock=1.2V:');
Col=0.25;//in fF/um
W=0.2;//in um
Ceff=1;//in fF/um
Cg=2;//in fF/um
Cf=Col*W; disp(Cf,'Cf(in fermifarad)=');
Cgnd=Ceff*W; disp(Ceff,'Cef(in fermifarad)=');
Vout1=Vout-((1.2*Cf)/(Cf+Cgnd));
disp(Vout1,'Output(in volts) when input=1.2V and clock=low:');
mprintf('\n\n When input=0V then output=0V irrespective of clock\n\n');
Cf1=(0.5*Cg*W)+(Col*W);
Vout2=0-((1.2*Cf1)/(Cf1+Cgnd));
disp(Vout2,'output(in volts) when input=0V and device is in linear region:');
//answers vary due to round off error

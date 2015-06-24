//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Piezoelectric transducer
// Example 9// Page 237
disp("Ccr=1200")
disp("Kq=100")
disp("Cc=250")
Ccr=1200  //('enter the capacitance of the transducer=:')
Kq=100  //('enter the charge sensitivity of the transducer=:')
Cc=250  //('enter the capacitance of the connecting cable=:')
//to calculate the sensitivity of transducer alone
Ktrans=Kq/Ccr;
printf('the sensitivity of the transducer alone is %fd V/micro m\n',Ktrans)
Camp=75  //('enter the capacitance of amplifier=:')
Ceq=Ccr+Cc+Camp
Ktot=Kq/Ceq;
printf('total sensitivity of the transducer is %fdV/micro m\n',Ktot)
Ramp=2*10^6  //('enter the resistance of the amplifier=:')
disp("tou=Ramp*Ceq*10^-12")
tou=Ramp*Ceq*10^-12;
e=5  //('enter the error in percent=:')
e1=1-(e/100);
// let tou*w1=l
l=sqrt(e1^2/(1-e1^2));
f1=l/(2*%pi*tou);
printf('The lowest frequency that can be measured with 5 per cent amplitude error by the entire system is %fd Hz\n',f1)
tou1=l/(2*%pi*100)
disp("Ceq1=tou1*10^12/Ramp")
Ceq1=tou1*10^12/Ramp
Creq=Ceq1-Ceq;
printf(' The capacitance that needs to be connected in parallel to extend the range of 5percent error to 100hz is %fd pF\n',Creq)
K_hf=Kq/Ceq1
printf('high frequency sensitivity is %fd V/micro m\n',K_hf)
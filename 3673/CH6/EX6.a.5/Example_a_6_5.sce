//Example_a_6_5 page no:235
clc;
R=5;
Vmax=150;
Zamag=60;
Zaang=30;
Zbmag=50;
Zbang=-25;
Zareal=Zamag*cosd(Zaang);
Zbreal=Zbmag*cosd(Zbang);
pf=cosd(0.179);
Ztmag=5+((Zamag*Zbmag)/(Zamag+Zbmag));
Ztang=-0.179;
Itmag=150/(sqrt(Ztmag));
Itang=0-(Ztang);
Zareal=65.84;
Zbreal=57.15;
Iamag=((2.97*50)/(60+50));
Ibmag=((2.97*60)/(60+50));
Za=Iamag^2*Zareal;
Zb=Ibmag^2*Zbreal;
Rt=R+((Zareal*Zbreal)/(Zareal+Zbreal));
I=Vmax/(sqrt(2)*Rt);//calculating current for calculating the power
Pa=I^2*Rt;
disp(pf,"the power factor is ");
disp(Za,"the power delivered to Za is (in W)");
disp(Zb,"the power delivered to Zb is (in W)");
disp(Pa,"the average power delivered to the circuit is (in W)");
disp("the calculated values varies slightly with textbook hence values are rounded off in text book");

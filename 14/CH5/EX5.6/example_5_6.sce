//Chapter 5
//Example_5_6
//Page 119
//reflection
clear;clc;
V=120; //Applied DC voltage at the sending end
Zc=30; //Characteristic Impedance of the line
Zs=0; //Source Imedance taken zero since its not given
m=2; //Two times we are calculating.i.e Zr=90 and Zr=10
for j=1:m
    
    if j==1 then
        Zr=90; //for the first time  i.e Case(i) 
    elseif j==2 then
        Zr=10; //for the second time  i.e Case(ii) 
    end  
rho_R=(Zr-Zc)/(Zr+Zc); //reflection coefficient for voltage at receiving end 
rho_S=(Zs-Zc)/(Zs+Zc); //reflection coefficient for voltage at the sending end
printf('\n\nCase(%d) Reflected and Receiving End voltages When Zr=%dohm',j,Zr);
printf('\nAt time\t\tV+\t\tVr\t\tV-\n')
v_plus=V; //initial value at the instant of switching
Vr=0;Vr_plot=Vr;
n=5; // for 5 time periods
for i=0:5
    if i==0 then
      printf('%d\t\t%d-->\t\t%d-->\t\t%d-->\n',i,0,0,0); //for before the instant of switching
    else 
      v_minus=rho_R*v_plus; //reflected wave the receiving end
      Vr=Vr+v_plus+v_minus; //receiving end voltage
      Vr_plot=[Vr_plot,Vr];  //saving Vr for plotting
      printf('%dT\t\t%d-->\t\t%d-->\t\t%d-->\n',i,v_plus,Vr,v_minus);
      v_plus=v_minus*rho_S; //second reflected wave at the sending end
    end
end
t=[0,1,3,5,7,9]; //time periods at which the receiving voltage has to be plotted
if j==1 then        //to discriminate between two cases
   clf();
   subplot(121);
   plot2d2(t,Vr_plot);
   xstring(t,Vr_plot,+string(Vr_plot));
elseif j==2 then
   subplot(122);
   plot2d2(t,Vr_plot);
   xstring(t,Vr_plot,+string(Vr_plot));
end
xlabel('Multiples of time period ------>');
ylabel('Receiving end voltage in Volts---->');
title('Plot Of Receiving end voltage versus time for Zr='+string(Zr)+'ohm');
end

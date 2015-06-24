// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 7 : TRANSIENT OVERVOLTAGES AND INSULATION COORDINATION

// EXAMPLE : 7.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
v = 1000 ; // ideal dc voltage source in V
Z_s = 0 ; // internal impedance in Ω
Z_c = 40 ; // characteristic impedance in Ω
Z_r = 60 ; // Cable is terminated in 60Ω resistor

// CALCULATIONS
// For case (a)
r_s = (Z_s - Z_c)/(Z_s + Z_c) ; // Reflection coefficient at sending end

// For case (b)
r_r = (Z_r - Z_c)/(Z_r + Z_c) ; // Reflection coefficient at receiving end

// For case (c)
T = 0:0.001:10.6 ; // // plotting values
for i = 1:length(T) ;
    if(T(i)<=1)
        x(i) = (1.2)*T(i) - 1 ;
    elseif(T(i)>=1 & T(i)<=2)
        x(i) = (-1.2)*T(i) + 1.4 ;
    elseif(T(i)>=2 & T(i)<=3)
        x(i) = (1.2)*T(i)- 3.4 ;
    elseif(T(i)>=3 & T(i)<=4)
        x(i) = (-1.2)*T(i) + 3.8 ;
    elseif(T(i)>=4 & T(i)<=5)
        x(i) = (1.2)*T(i)- 5.8 ;
    elseif(T(i)>=5 & T(i)<=6)
        x(i) = (-1.2)*T(i) + 6.2 ;
    elseif(T(i)>=6 & T(i)<=7)
        x(i) = (1.2)*T(i)- 8.2 ;
    elseif(T(i)>=7 & T(i)<=8)
        x(i) = (-1.2)*T(i) + 8.6 ;
    elseif(T(i)>=8 & T(i)<=9)
        x(i) = (1.2)*T(i)- 10.6 ;
    elseif(T(i)>=9 & T(i)<=10)
        x(i) = (-1.2)*T(i) + 11 ;
    elseif(T(i)>=10 & T(i)<=10.6)
        x(i) = (1.2)*T(i) - 13 ;
        end 
end

subplot(2,1,1) ; // Plotting two graph in same window
plot2d(T,x,5,'012','',[0,-1,11,0.2]) ;

a = gca() ;
xlabel("TIME") ;
ylabel("ρ_s = -1             DISTANCE             ρ_r = 0.2") ;
xtitle("Fig 7.6 (c) Lattice diagram") ;
a.thickness = 2 ; // sets thickness of plot
xset('thickness',2) ; // sets thickness of axes
xstring(1,-1,'T') ;
xstring(2,-1,'2T') ;
xstring(3,-1,'3T') ;
xstring(4,-1,'4T') ;
xstring(5,-1,'5T') ;
xstring(6,-1,'6T') ;
xstring(7,-1,'7T') ;
xstring(8,-1,'8T') ;
xstring(9,-1,'9T') ;
xstring(10,-1,'10T') ;
xstring(0.1,0.1,'0V') ;
xstring(2,0.1,'1200V') ;
xstring(4,0.1,'960V') ;
xstring(6,0.1,'1008V') ;
xstring(8,0.1,'998.4V') ;
xstring(1,-0.88,'1000V') ;
xstring(3,-0.88,'1000V') ;
xstring(5,-0.88,'1000V') ;
xstring(7,-0.88,'1000V') ;
xstring(9,-0.88,'1000V') ;

// For case (d)
q1 = v ; // Refer Fig 7.11 in textbook
q2 = r_r * v ;
q3 = r_s * r_r * v ;
q4 = r_s * r_r^2 * v ;
q5 = r_s^2 * r_r^2 * v ;
q6 = r_s^2 * r_r^3 * v ;
q7 = r_s^3 * r_r^3 * v ;
q8 = r_s^3 * r_r^4 * v ;
q9 = r_s^4 * r_r^4 * v ;
q10 = r_s^4 * r_r^5 * v ;
q11 = r_s^5 * r_r^5 * v ;
V_1 = v - q1 ;
V_2 = v - q3 ;
V_3 = v - q5 ;
V_4 = v - q7 ; // voltage at t = 6.5T & x = 0.25l in Volts
V_5 = v - q9 ;

// For case (e)
t = 0:0.001:9 ;

for i= 1:length(t)
    if(t(i)>=0 & t(i)<=1)
        y(i) = V_1 ;
    elseif(t(i)>=1 & t(i)<=3)
        y(i) = V_2 ;
    elseif(t(i)>=3 & t(i)<=5)
        y(i)= V_3 ;
    elseif(t(i)>=5 & t(i)<=7)
        y(i)= V_4 ;
    elseif(t(i)>=7 & t(i)<=9)
        y(i)= V_5 ;
    end
end
subplot(2,1,2) ;
a = gca() ;
a.thickness = 2 ; // sets thickness of plot
plot2d(t,y,2,'012','',[0,0,10,1300]) ;
a.x_label.text = 'TIME (T)' ; // labels x-axis
a.y_label.text = 'RECEIVING-END   VOLTAGE (V)' ; // labels y-axis
xtitle("Fig 7.6 (e) . Plot of Receiving end Voltage v/s Time") ;
xset('thickness',2); // sets thickness of axes
xstring(1,0,'1T') ; // naming points
xstring(3,0,'3T') ;
xstring(5,0,'5T') ;
xstring(7,0,'7T') ;
xstring(1,1200,'1200 V') ;
xstring(4,960,'960 V') ;
xstring(6,1008,'1008 V') ;
xstring(8,998.4,'998.4 V') ;


// DISPLAY RESULTS
disp("EXAMPLE : 7.6 : SOLUTION :-") ;
printf("\n (a) Reflection coefficient at sending end , ρ_s = %.f \n",r_s) ;
printf("\n (b) Reflection coefficient at sending end , ρ_r = %.1f \n",r_r)
printf("\n (c) The lattice diagram is shown in Fig 7.6 (c) \n") ;
printf("\n (d) From Fig 7.6 (c) , the voltage value is at t = 6.5T & x = 0.25 l is = %.d Volts \n",V_4) ;
printf("\n (e) The plot of the receiving-end voltage v/s time is shown in Fig 7.6 (e) \n") ;

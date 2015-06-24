// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 10 : PROTECTIVE EQUIPMENT AND TRANSMISSION SYSTEM PROTECTION

// EXAMPLE : 10.5 :
clear ; clc ; close ; // Clear the work space and console

// CALCULATIONS
// For case (a)
// Coordinate Values taken here are only for reference . Refer exa 10.5

T = 0:0.01:300 ;

for i = 1:int(length(T)/1.1) ; 
    po(i) = 4 ;
end
for i = int(length(T)/1.1):length(T)
    po(i) = 5 ;
end
for i = 1:int(length(T)/1.1)
    io(i) = 4 ;
    end
for i = int(length(T)/1.1):length(T)
    io(i) = 3 ;
end

a= gca() ;
subplot(2,1,1) ; // To plot 2 graph in same graphic window
a.thickness = 2 ; // sets thickness of plot of points
plot2d(T,po,3,'012','',[0 0 310 7]) ;
plot2d(T,io,3,'012','',[0 0 310 7]) ;
xtitle("Fig 10.5 (a)   Zones of protection for relay R_12") ;
xset('thickness',2); // sets thickness of axes
xstring(25,3.8,'[]') ;
xstring(45,4.2,'(1)') ;
plot(45,4,'+') ;
xstring(60,3.8,'[]') ;
xstring(60,4.2,'B_12') ;
xstring(120,3.8,'[]') ;
xstring(120,4.2,'B_21') ;
xstring(140,4.2,'(2)') ;
plot(140,4,'+') ;
xstring(155,3.8,'[]') ;
xstring(155,4.2,'B_23') ;
xstring(220,3.8,'[]') ;
xstring(220,4.2,'B_32') ;
xstring(270,5.0,'(3)') ;
xstring(285,2.8,'[]') ;
xstring(285,3.2,'B_35') ;
xstring(285,4.8,'[]') ;
xstring(285,5.2,'B_34') ;
xstring(85,3.4,'TL_12') ;
xstring(180,3.4,'TL_23') ;
xstring(60,3,'ZONE 1') ;
xstring(100,2,'ZONE 2') ;
xstring(190,1,'ZONE 3') ;

// For case (b)

for i = 1:int(length(T)/4) ;
    vo(i) = 0.5;
end
for i = int(length(T)/4):length(T/1.7)
    vo(i) = 2;
end
for i = int(length(T)/1.7):length(T)
    vo(i) = 4
end

for i = int(length(T)/2.14):length(T/1.35) ; // plotting Voltage values
    uo(i) = 0.5;
end
for i = int(length(T)/1.35):length(T)
    uo(i) = 2;
end

a = gca() ;
a.thickness = 2 ;
subplot(2,1,2)
plot2d(T,vo,2,'012','',[0 0 310 7]) ;
plot2d(T,uo,2,'012','',[0 0 310 7]) ;
ylabel("OPERATING TIME") ;
xlabel("IMPEDANCE") ;
xtitle("Fig 10.5 (b) Coordination of distance relays , Operating time v/s Impedance") ;
xset('thickness',2); // sets thickness of axes
xstring(0.1,0.3,'T_1') ;
xstring(30,0.6,'R_12') ;
xstring(58,1.3,'T_2') ;
xstring(100,2.0,'R_12') ;
xstring(160,3.0,'T_3') ;
xstring(230,4.0,'R_12') ;
xstring(160,0.6,'R_23') ;
xstring(260,2.1,'R_23') ;

// DISPLAY RESULTS
disp("EXAMPLE : 10.5 : SOLUTION :-") ;
printf("\n (a) The zone of protection for relay R_12 is shown in Fig 10.5 (a) \n") ;
printf("\n  ZONE 1 lies b/w (1) & B_21 \n") ;
printf("\n  ZONE 2 lies b/w (1) & TL_23 \n") ;
printf("\n  ZONE 3 lies after (1) \n") ;
printf("\n (b) The coordination of the distance relays R_12 & R_21 in terms of Operating time v/s Impedance is shown in Fig 10.5 (b)") ;

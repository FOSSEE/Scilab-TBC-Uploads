
              // Examle 4.10

             // From Diagram 4.12

P=25;                              // Power
Rl=8;                              // Load resistance
Vth=P*4*Rl;                        // Thevenin's equivalent voltage

           // If Load is Short-ckt (RL=0)
Vo=0;                              // Voltage
IL=1;                              // load current 
Po1=Vo*IL;                         // O/p power

           // If Load is Open-ckt ( RL=infinity )
IL1=0;                             // Load current
Vo1=1;                             // Voltage
Po2=Vo1*IL1;                       // O/p power          
           
x=[0 2 4 6 8 16 32 ];              // Diffrent value of RL
y=[0 16 22.22 24.49 25 22.22 16 ]  // Value of Power         
           
plot2d(x,y);                       // To plot graph           
xlabel('RL (in Ohms )--->');       // For X-Label      
ylabel('Po (in W ---->')           // For Y-Label



             //  View  p 115            4.10

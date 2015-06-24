
// scilab Code Exa 4.2 Steam Turbine Plant for different reheat cycles

p1=160; // Turbine Inlet Pressure in bar
T1=500;  // Turbine Entry Temperature in Degree Celsius
p2=0.06;  // Condenser Pressure in bar

// from steam tables at p1=0.06 bar, 
h1=147; // Specific Enthalpy of water in kJ/kg
h2=2567; // Specific Enthalpy of steam in kJ/kg

h3=3295; // from steam table
h4=1947; // from steam table
q_n=h3-h1;
n_N=(h3-h4)/(q_n);
x=(h4-h1)/(h2-h1);
disp("%",n_N*100,"for non reheat cycle plant efficiency is")
disp ("kJ/kWh",3600/n_N,"Turbine Heat Rate is")
disp(x,"final dryness fraction is")
// for reheat cycle

p(1)=70;
h5(1)=3412; // in kJ/kg
h7(1)=3065; // in kJ/kg
h6(1)=2094; // in kJ/kg
p(2)=50;
h5(2)=3433; // in kJ/kg
h7(2)=2981; // in kJ/kg
h6(2)=2144; // in kJ/kg
p(3)=25;
h5(3)=3475; // in kJ/kg
h7(3)=2826; // in kJ/kg
h6(3)=2249; // in kJ/kg
for i=1:3
 q_r(i)=h5(i)-h7(i);
a(i)=(h6(i)-h4)/(q_r(i));
n_r(i)=1-a(i); // exact Rankine efficiency
b(i)=q_r(i)*n_r(i)/n_N;
n_th(i)=(q_n+b(i))*n_N/(q_n+q_r(i));
hr_t(i)=3600/n_th(i);
x(i)=(h6(i)-h1)/(h2-h1);
disp("bar",p(i),"for reheat pressure" )
disp("kJ",q_r(i),"q_R=")
disp("kJ",h6(i)-h4,"H6-H4= ")
disp("%",n_r(i)*100,"Rankine efficiency of the plant is")
disp("%",n_th(i)*100,"thermal efficiency of the plant is")
disp("kJ/kWh",hr_t(i),"Heat Rate is")
disp(x(i),"final dryness fraction is")
   
end

disp("Comment: Error in Textbook, Answers vary due to Round-off Errors")

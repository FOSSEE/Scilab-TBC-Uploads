clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.3
//Caption : Program to Determine the Expression for yi for two reactions

//CH4 + H2O  --> CO + 3H2    (A)

//CH4 + 2H2O --> CO2 + 4H2   (B)

Species=['CH4','H2O','CO','CO2','H2','sum'];
v_A=['-1','-1','1','0','3','2'];
v_B=['-1','-2','0','1','4','2'];
m_CH4=2;
m_H2O=3;
mt=m_CH4+m_H2O;
y=['(m_CH4+vie1+vje2)/(mt+vie1+vje2)','(m_H2O+vie1+vje2)/(mt+vie1+vje2)','(vie1)/(mt+vie1+vje2)','(vje2)/(mt+vie1+vje2)','(vie1+vje2)/(mt+vie1+vje2)',' '];

//Hence

yf=['(2-e1-e2)/(5+2e1+2e2)','(3-e1-2e2)/(5+2e1+3e2)','e1/(5+2e1+2e2)','e2/(5+2e1+2e2)','(3e1+4e2)/(5+2e1+2e2)',' '];

Ans=[Species',v_A',v_B',y',yf'];

disp(Ans,' i   v_A  v_B      y(Before substitution)         y_species')

//End
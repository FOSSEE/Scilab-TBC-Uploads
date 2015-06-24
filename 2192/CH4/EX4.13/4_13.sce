clc,clear
printf('Example 4.13\n\n')

//PART(i) PART(i) PART(i) PART(i) PART(i) PART(i) PART(i) PART(i) PART(i) PART(i) 
V=230;R=100;
P_each = V^2/R

//part(a)
P1a=6*P_each  //power consumed
//part(b)
P1b=V^2/(R+R+R) + V^2/(R+R+R)  //power consumed

//PART(ii) PART(ii) PART(ii) PART(ii) PART(ii) PART(ii) PART(ii) PART(ii) PART(ii) 
V=400/sqrt(3)

//part(a)
R_eq=R/2 //equivalent resistance of given configuration
P2a=V^2/R_eq //power consumed
//part(b)
R_eq=R+R //equivalent resistance of given configuration
P2b=V^2/R_eq //power consumed

//PART(iii) PART(iii) PART(iii) PART(iii) PART(iii) PART(iii) PART(iii) PART(iii) 
V=400
R_eq=R/2 //equivalent resistance of given configuration
//part(a)
P3a=V^2/R_eq //power consumed
//part(b)
R_eq=R+R //equivalent resistance of given configuration
P3b=V^2/R_eq //power consumed

printf('Part(i)\n')
printf('(a)Power consumed = %.3f kW\n',P1a/1000)
printf('(b)Power consumed = %.0f watts\n',P1b)
printf('Part(ii)\n')
printf('(a)Power consumed = %.3f kW\n',P2a/1000)
printf('(b)Power consumed = %.3f kW\n',P2b/1000)
printf('Part(iii)\n')
printf('(a)Power consumed = %.1f kW\n',P3a/1000)
printf('(b)Power consumed = %.0f watts\n',P3b)

printf('\nAnswers may mismatch due to calculation error in book')

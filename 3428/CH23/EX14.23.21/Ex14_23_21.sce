//Section-14,Example-5,Page no.-PC.114
//To calculate the pH of a solution obtained in the given condition.
clc;
M_1=0.1                                 //(M)
M_2=0.2                                     //(M)
V_1=10                            //(ml)
V_2=40                              //(ml)
V=V_1+V_2                      //(ml)
m_eq=(M_1*V_1)+(M_2*V_2*2)             //mgm. equivalents of [H3O+]
C_1=m_eq/V                   //[H3O+] //(M)
pH=-log10(C_1)
disp(pH,'pH of the given solution')
//Answer given in the book(pH=4.685) is wrong

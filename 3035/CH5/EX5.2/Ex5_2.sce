// Variable Declaration
w = 0.85             //Weight of overhead line(kg/m)
T_0 = 3.5*10**4      //Maximum allowable tension(N)
L_1 = 160.0          //Span(m) for case(i)
L_2 = 200.0          //Span(m) for case(ii)
L_3 = 250.0          //Span(m) for case(iii)
L_4 = 275.0          //Span(m) for case(iv)
g_c = 7.1            //Minimum ground clearance(m)
L_S = 1.5            //Length of suspension insulator string

// Calculation Section
w1 = w * 9.81            //Weight(N/m)

S_1 = w1*L_1**2/(8*T_0)  //Sag(m)
H_1 = g_c + S_1 + L_S    //Height of lowest cross-arm(m)

S_2 = w1*L_2**2/(8*T_0)  //Sag(m)
H_2 = g_c + S_2 + L_S    //Height of lowest cross-arm(m)

S_3 = w1*L_3**2/(8*T_0)  //Sag(m)
H_3 = g_c + S_3 + L_S    //Height of lowest cross-arm(m)

S_4 = w1*L_4**2/(8*T_0)  //Sag(m)
H_4 = g_c + S_4 + L_S    //Height of lowest cross-arm(m)

// Result Section
printf('Span in meters\t                          %d\t  %d\t  %d\t  %d' ,L_1,L_2,L_3,L_4)
printf('Sag in meters\t                         %.3f\t %.3f\t %.3f\t %.3f' ,S_1,S_2,S_3,S_4)
printf('Height of lowest cross-arm in meters\t %.3f\t %.3f\t %.3f\t %.3f' ,H_1,H_2,H_3,H_4)
printf('\nNOTE : ERROR : For finding height of lowest cross arm the length of insulation string is not considered in textbook calculation')
printf('although it is mentioned in formula. Since length of insulation string is taken here there is a difference in answers from that of given in textbook')

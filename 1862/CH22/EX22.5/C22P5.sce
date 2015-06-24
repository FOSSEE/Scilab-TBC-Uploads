clear
clc
//to find average speed,root-mean speed,root-mean square speed and most probable speed of particals

//Given:
//number of particals
N = 10
//speed of particals
v1 = 0.0//in m/s
v2 = 1.0//in m/s
v3 = 2.0//in m/s
v4 = 3.0//in m/s
v5 = 3.0//in m/s
v6 = 3.0//in m/s
v7 = 4.0//in m/s
v8 = 4.0//in m/s
v9 = 5.0//in m/s
v10 = 6.0//in m/s

//Solution:
//applying formula for average speed
//average speed of particals
vav = (1/N)*(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10)//in m/s
//applying formula for root-mean speed
//root-mean speed of particals
v_square_av = (1/N)*(v1^2+v2^2+v3^2+v4^2+v5^2+v6^2+v7^2+v8^2+v9^2+v10^2)//in m^2/s^2
//applying formula for root-mean square speed
//root-mean square speed of particals
vrms = sqrt(v_square_av)//in m/s
//most probable speed of particals
//taking into consideration all speeds of particals
vp = v4//in m/s
printf ("\n\n Average speed of particals vav = \n\n %.1f m/s" ,vav);
printf ("\n\n Root-mean speed of particals v_square_av = \n\n %.1f m^2/s^2" ,v_square_av);
printf ("\n\n Root-mean square speed of particals vrms = \n\n %.1f m/s" ,vrms);
printf ("\n\n Most probable speed of particals vp = \n\n %.1f m/s" ,vp);

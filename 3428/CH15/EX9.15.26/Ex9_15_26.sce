//Section-9,Example-1,Page no.-E.56
//To calculate the transport number of silver and nitrate ions.
clc;
u_1=0.916                        //u_Ag+/u_NO3-
u_2=u_1+1                        //(u_NO3-/(u_Ag+ + u_NO3-))
t_no=1/u_2
disp(t_no,'Transport no. of nitrate ions')
t_Ag=1-t_no
disp(t_no,'Transport no. of silver ions')

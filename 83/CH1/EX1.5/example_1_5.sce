//Chapter 1
//Example 1.2
//page 6
clear;clc;

c1_md_6pm=5;     c1_d_7pm=3;    c1_lf=0.2;
c2_md_11am=5;    c2_d_7pm=2;    c2_avg_load=1.2;
c3_md_7pm=3;                    c3_avg_load=1;

md_system=c1_d_7pm + c2_d_7pm + c3_md_7pm;
sum_mds=c1_md_6pm + c2_md_11am + c3_md_7pm;
df=sum_mds/md_system;

printf('Maximum demand of the system is %d kW at 7p.m \n',md_system);
printf('Sum of the individual maximum demands = %d kW \n',sum_mds);
printf('Diversity factor= %.3f \n\n',df);

c1_avg_load=c1_md_6pm*c1_lf;
c2_lf=c2_avg_load/c2_md_11am;
c3_lf=c3_avg_load/c3_md_7pm;

printf('Consumer1 -->\t Avg_load= %.2f kW \t LF= %.1f %% \n',c1_avg_load,c1_lf*100);
printf('Consumer2 -->\t Avg_load= %.2f kW \t LF= %.1f %% \n',c2_avg_load,c2_lf*100);
printf('Consumer3 -->\t Avg_load= %.2f kW \t LF= %.1f %% \n\n',c3_avg_load,c3_lf*100);

avg_load=c1_avg_load + c2_avg_load + c3_avg_load;
lf=avg_load/md_system;

printf('Combined average load = %.1f kW \n',avg_load);
printf('Combined load factor= %.1f %% \n\n',lf*100);

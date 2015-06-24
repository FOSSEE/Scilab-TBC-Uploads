//example 16
//exergy destroyed during mixing of fluid streams
clear
clc
m1=300 //in lbm/min
h1=18.07 //in Btu/lbm
T0=530 //temperature of atmospheric air in R
s1=0.03609 //Btu/lbm-R
m2=22.7 //in lbm/min
h2=1162.3 //in Btu/lbm
s2=1.7406 //in Btu/lbm-R
m3=322.7 //in lbm/min
h3=97.99 //in Btu/lbm
s3=0.18174 //in Btu/lbm-R
Wrevout=m1*(h1-T0*s1)+m2*(h2-T0*s2)-m3*(h3-T0*s3) //reversible power in Btu/min
Xdestroyed=Wrevout //in Btu/min
printf("\n The reversible work for the process is = %.0f Btu/min. \n",Wrevout);
printf("\n The rate of exergy destruction is = %.0f Btu/min. \n",Xdestroyed);
//Chapter 4
//Example 4_14
//Page 81

clear;clc;

mw=150;
cc_steam=1600;
cc_hydro=3000;
oc_steam=0.06;
oc_hydro=0.03;
interest=0.07;

md=mw*10^3;
printf("MAximum demand = %d MW \n", mw);
printf("STEAM PLANT: \n");
cc_s=cc_steam*md;
ai_s=interest*cc_s;
fc_s=ai_s;
rc_s=oc_steam;

printf("Capital cost = Rs. %d*10^6 \n", cc_s/10^6);
printf("Annual interest = Rs. %.2f*10^6 \n", ai_s/10^6);
printf("Fixed cost/unit = Rs. %.2f*10^6/x \n", fc_s/10^6);
printf("Running cost/unit = Rs. %.2f \n", rc_s);
printf("Total cost/unit = Rs. %.2f*10^6/x+%.2f \n\n", ai_s/10^6, rc_s);

printf("HYDRO PLANT: \n");
cc_h=cc_hydro*md;
ai_h=interest*cc_h;
fc_h=ai_h;
rc_h=oc_hydro;

printf("Capital cost = Rs. %d*10^6 \n", cc_h/10^6);
printf("Annual interest = Rs. %.2f*10^6 \n", ai_h/10^6);
printf("Fixed cost/unit = Rs. %.2f*10^6/x \n", fc_h/10^6);
printf("Running cost/unit = Rs. %.2f \n", rc_h);
printf("Total cost/unit = Rs. %.2f*10^6/x+%.2f \n\n", ai_h/10^6, rc_h);

x=490*10^6;
printf("By equating the overall cost, we get x = %.2f kWh \n", x);

lf=x/md/8760;
printf("Load factor = %.2f %%", lf*100);





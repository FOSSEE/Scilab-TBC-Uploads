clear;
//clc();
op=960*10^(6);..//kWh generated per year
lf=0.55;
tar_fix=1000;
tar_kwh=0.4;

max_dem=op/(lf*8760);
ann_dem_cost=tar_fix*max_dem;
ann_ene_cost=op*0.4;
tot= ann_dem_cost+ ann_ene_cost;
cost=tot/op;
printf("the cost of energy per kwh at the busbars is:%.3f Rs",cost);
//difference in answer is due to the misprint in the calculation of total annual charges 

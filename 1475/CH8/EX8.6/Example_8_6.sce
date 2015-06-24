// Example 8.6  In 1981 a city had a total of 507
clc;
clear;
total_births=507000;
total_population=27512000;
total_female=7576000;
crude_br=(total_births/total_population)*1000;
general_fr=(total_births/total_female)*1000;
disp(general_fr,"General Fertility rate per thousand =",crude_br,"Crude Birth Rate per thousand = ",total_female,"Total Female Population = ",total_population,"Total Population =",total_births,"Total Births =");

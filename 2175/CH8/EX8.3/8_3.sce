clc;
h1=3442.6;
h2=2713;
h6=3487;
h7=2535;
h3=112;

TW=(h1-h2)+(h6-h7);

Q=(h1-h3)+(h6-h2);

Ceff=TW/Q;
disp(Ceff,"cycle efficiency is:");

ssc=1/TW;
disp("kg/kW h",ssc,"specific steam consuption is:")

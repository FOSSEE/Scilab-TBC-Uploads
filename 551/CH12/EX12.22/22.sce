clc

h_l=355.988; //kJ/kg
s_l=0.5397; //kJ/kg K 
s_f=0.0808; //kJ/kg K
s_g=0.6925; //kJ/kg K
h_f=29.98; //kJ/kg
h_g=329.85; //kJ/kg

p1=4; //bar
p2=0.04; //bar
v_f2=76.5*10^(-6); //m^3/kg

h1=2789.9; //kJ/kg
s1=6.4406; //kJ/kg
h_f=121.5; //kJ/kg
h_fg=2432.9; //kJ/kg
s_f=0.432; //kJ/kg K
s_fg2=8.052; //kJ/kg K

p4=15; //bar
p3=0.04; //bar

v_f=0.0001; //kJ/kg K

h_f4=123; //kJ/kg
h_m=254.88; //kJ/kg
h_fn=29.98; //kJ/kg
h_fk=29.988; //kJ/kg

disp("(i) Overall thermal efficiency ")
m=(h1-h_f4)/(h_m-h_fn); //The amount of mercury circulating for 1kg of steam in the bottom cycle
Q1=m*(h_l-h_fk); //total

x2=(s1-s_f)/(s_fg2);

h2=h_f+x2*h_fg;

W_T=m*(h_l-h_m)+(h1-h2); //total

n_overall=W_T/Q1; //W_P may be neglected
disp("n_overall =")
disp(n_overall)


disp("(ii) Flow through mercury turbine=")
A=48000; //kg/h
m_Hg=m*A;
disp(m_Hg)
disp("kg/h")


disp("(iii) Useful work in binary vapour cycle=")
W_total=A*W_T/3600; 
disp(W_total)
disp("kW")


disp("(iv) Overall efficiency under new conditions ")
n_Hg=0.84;
n_steam=0.88;

W_Hg=n_Hg*101.1;
h_m1=h_l-W_Hg;
m1=(h1-h_f4)/(h_m1-h_fn);

h_g=3037.6; //kJ/kg
s_g=6.918; //kJ/kg
s_f2=0.423; //kJ/kg K
s_fg2=8.052; //kJ/kg K

Q1=m1*(h_l - h_fk) + (h_g-h1);

x2=(s_g-s_f2)/s_fg2;
h2=h_f+x2*h_fg;

W_steam=n_steam*(h_g-h2);

W_total=m1*W_Hg + W_steam;

n_overall=W_total/Q1;
disp("n_overall")
disp(n_overall)
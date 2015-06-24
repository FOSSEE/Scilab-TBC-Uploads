clear;
clc;

//page no. 122

sw = 20;// specific weight in lb/cuft
p_B = 6;//psi
p_A = 2;//psi
L = 17.28;//ft
l = 10;//ft
V_A = sqrt(2*32.2*((p_B-p_A)*144/50 - l));

printf('The mean velocity = %.2f fps',V_A);

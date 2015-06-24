clear;
clc;

//page no. 127

p_A = 0;
p_B = 0;
p_C = 0;
p_D = 0;
//velocity heads
V1 = 15.28;//fps
V2 = 16.78;//fps
V3 = 15.50;//fps
V4 = 16.50;//fps

q = sqrt(2*32.2)*integrate('h^(1/2)','h',3.771,4.229);

printf('V_A = %.2f fps,\n V_B = %.2f fps,\n V_C = %.2f fps,\n V_D = %.2f fps',V1,V2,V3,V4);
printf('\n Flow rate = %.2f cfs/ft',q);

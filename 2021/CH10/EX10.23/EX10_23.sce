//Finding of discharge at section-1
//Given
T=30;
dy=0.06;
dt=3600;
dx=1000;
q2=35;
//To Find
q1=q2+((T*dy)/dt)*dx;
disp("Discharge at section-1 ="+string(q1)+" m^3/sec");

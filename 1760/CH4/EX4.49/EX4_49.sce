                             //EXAMPLE 4-49          PG NO  260-261
Vm=[10 -0.25;%i*25  0.75+%i*0.5]/[0.45-%i*0.5 -0.25;-0.25 0.75+%i*0.5];
disp('i) Voltage (Vm)   is     =  '+string (det(Vm)) +' V ');
Vn=[0.45-%i*0.5 10;-0.25 0.75+%i*0.5]/[0.45-%i*0.5 10;-0.25 0.75+%i*0.5];
disp('ii) Voltage (Vn)   is     =  '+string (det(Vn)) +' V ');

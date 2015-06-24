                     //EXAMPLE 4-50        PG  NO 261-262
I1=(17.32+%i*10)/(10+%i*10);
VCA=I1*5;
disp('i) VOLTAGE (VCA)   is     =  '+string (VCA) +' V   ');
I2=(35.35-%i*35.35)/(5-%i*5);
VBD=(-I2)*5;
disp('ii) VOLTAGE (VBD)   is     =  '+string (VBD) +' V   ');
VCD=VCA+VBD;
disp('ii) VOLTAGE (VCD)   is     =  '+string (VCD) +' V   ');
